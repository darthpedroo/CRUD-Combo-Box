""" Module that contains flask application for purchase orders! """

from datetime import datetime
from flask import Flask, render_template, request, redirect, url_for
from persistance.db import getdb
from persistance.mysqlclienteDao import MySQLClienteDAO
from persistance.storedProcedures import StoredProcedures
from persistance.mysqlOrdenVentaCab import MySQLOrdenVentaCab
from persistance.ordenVentaCab import OrdenVentaCab
from persistance.mysqlordenventadet import OrdenVentaDet

app = Flask(__name__)

app.config['DB_HOST'] = 'localhost'
app.config['DB_USER'] = 'root'
app.config['DB_PASSWORD'] = 'i2i0L2aH1'
app.config['DB_DATABASE'] = 'box'

def get_all_clients():

    connection = getdb()
    cursor = connection.cursor()  # type: ignore
    cursor.execute("SELECT RazonSocial FROM clientes")
    results = cursor.fetchall()
    cursor.close()
    cleaned_results = [
        x[0].strip() for x in results if x[0].strip()  # type: ignore
    ]
    return cleaned_results

def get_productos_clientes_from_nombre(nombre: str):

    stored_procedures_clientes_from_nombre = StoredProcedures(getdb())
    return stored_procedures_clientes_from_nombre.procedure_get_productos_clientes_from_nombre(
        nombre)

@app.route("/")
def home():
    return render_template("index.html")

@app.route("/seleccionar-cliente")
def seleccionar_cliente():

    clientes = get_all_clients()
    return render_template("seleccionar-cliente.html", clientes=clientes)

@app.route("/productos-cliente", methods=["GET", "POST"])
def productos_clientes_from_nombre():
    clientes = get_all_clients()
    if request.method == "POST":
        try:
            nombre = request.form["nombre"]
            
            todos_los_productos_clientes = get_productos_clientes_from_nombre(nombre)
            productos_clientes = []
            for producto in todos_los_productos_clientes:
                connection = getdb()
                stored_procedures = StoredProcedures(connection)

                if stored_procedures.producto_tiene_receta_de_materiales(producto):
                    productos_clientes.append(producto)

            
            if len(productos_clientes) == 0:
                ex = "SU CLIENTE NO TIENE NINGUN PRODUCTO CON RECETA DE MATERIALES!. PRUEBE CON OTRO"
                return render_template('error.html', ex=ex)
                
            
            connection = getdb()
            stored_procedures = StoredProcedures(connection)
            tipo_entregas = stored_procedures.get_all_tipos_entrega()
            tipo_pagos = stored_procedures.get_all_tipos_pago()
            vendedores = stored_procedures.get_all_vendedores()
            return render_template("crear-orden-venta.html", productos_clientes=productos_clientes, cliente=nombre, tipo_entregas=tipo_entregas, tipo_pagos=tipo_pagos, vendedores=vendedores)
        except Exception as ex:
            print("WRONG")
    return render_template("crear-orden-venta.html", productos_clientes=productos_clientes, cliente=nombre)

@app.route("/ventas-cab", methods=["GET"])
def ventas_cab():
    ventas_cab = MySQLOrdenVentaCab(getdb())
    ventas_cab.get_all_orden_venta_cab()
    return render_template("all-ventas-cab.html")

@app.route('/ordenes')
def ordenes():
    connection = getdb()
    stored_procedures = StoredProcedures(connection)
    ordenventacab = stored_procedures.get_all_orden_venta_cab_ids()

    return render_template('viewer-ventas.html', ordenventacab=ordenventacab)

@app.route("/venta-cab", methods=["GET"])
def single_venta_cab():
    venta_id = request.args.get("venta_id")
    if not venta_id:
        return redirect(url_for('home'))  

    try:
        venta_id = int(venta_id)  # Convert to int
        ventas_cab = MySQLOrdenVentaCab(getdb())
        single_venta_cab = ventas_cab.get_orden_venta_cab(venta_id)
        connection = getdb()
        stored_procedures = StoredProcedures(connection)
        id_venta_cab = single_venta_cab[0].id_orden_venta
        ventas_det = stored_procedures.get_all_ventas_det(id_venta_cab)
        cliente_id = single_venta_cab[0].id_cliente
        tipo_entrega_id = single_venta_cab[0].tipo_entrega
        tipo_pago_id = single_venta_cab[0].tipo_pago
        tipo_entrega = stored_procedures.get_tipo_entrega_name_from_id(tipo_entrega_id)
        tipo_pago = stored_procedures.get_tipo_pago_name_from_id(tipo_pago_id)
        cliente = stored_procedures.get_cliente_from_id(cliente_id)
        
        return render_template("single-venta-cab.html", single_venta_cab=single_venta_cab, ventas_det=ventas_det, cliente=cliente, tipo_entrega=tipo_entrega, tipo_pago=tipo_pago)
    
    except Exception as Ex:
        return render_template('error.html', ex=str(Ex))
        #print("No hay suficientes ordenes de ventas!")

        
        #return redirect(url_for('home'))



@app.route("/crear-orden-venta", methods=["GET", "POST"])
def crear_orden_venta():
    my_sql_orden_ventas_cab = MySQLOrdenVentaCab(getdb())
    clientes = get_all_clients()

    if request.method == "POST":
        try:
            lista_cantidad = []
            id_cliente = int(request.form["id_cliente"])
            
            connection = getdb()
            stored_procedures = StoredProcedures(connection)
            nombre_cliente = stored_procedures.get_cliente_from_id(id_cliente)[0].razon_social
            
            
            productos_clientes = get_productos_clientes_from_nombre(nombre_cliente)
            
            tipo_entrega = int(request.form["tipo_entrega"])
            tipo_pago = int(request.form["tipo_pago"])
            id_vendedor = int(request.form["id_vendedor"])
            observaciones = request.form["observaciones"]

            id_orden_venta = len(
                my_sql_orden_ventas_cab.get_all_orden_venta_cab()) + 1
            numero_orden = len(
                my_sql_orden_ventas_cab.get_all_orden_venta_cab()) + 1
            fecha_actual = datetime.today().strftime('%Y-%m-%d %H:%M:%S')
            fecha_entrega = None
            estado = 1
            subtotal = 0
            descuento = 0
            total = 0
            temp_list_of_articles = []
            
            
            for producto in productos_clientes:
                print("FORM:", request.form)
                cantidad = request.form.get(
                    f'cantidad_{producto.id_producto}')

                if cantidad is not None:
                    cantidad = int(cantidad)
                    lista_cantidad.append(cantidad)


                    if cantidad > 0:

                        connection = getdb()
                        stored_procedures = StoredProcedures(connection)

                        lista_registros_receta_mats = stored_procedures.get_receta_de_producto(
                            producto.id_producto)

                        for registro in lista_registros_receta_mats:
                            connection = getdb()
                            stored_procedures = StoredProcedures(connection)
                            if stored_procedures.articulo_esta_disponible(registro, cantidad):

                                current_article = (registro, cantidad)
                                temp_list_of_articles.append(current_article)
                            else:
                                return render_template("error.html", ex="No hay stock para uno o más articulos!", redirect_url="seleccionar_cliente")

            for articulo in temp_list_of_articles:
                connection = getdb()
                stored_procedures = StoredProcedures(connection)
                stored_procedures.add_to_articulos_reservados(
                    articulo[0], articulo[1])

                print("Todos los artículos fueron reservados con éxito.")

            orden_venta_cab = OrdenVentaCab(
                id_orden_venta, numero_orden, fecha_actual, fecha_entrega, # type: ignore
                id_vendedor, id_cliente, tipo_entrega, tipo_pago,
                estado, subtotal, descuento, total, observaciones
            )
            connection = getdb()
            stored_procedures = StoredProcedures(connection)
            my_sql_orden_ventas_cab = MySQLOrdenVentaCab(getdb())

            my_sql_orden_ventas_cab.create_orden_venta_cab(orden_venta_cab)

            for index, producto in enumerate(productos_clientes):
                try:
                    cantidad = lista_cantidad[index]
                    if cantidad > 0:
                        connection = getdb()
                        stored_procedures = StoredProcedures(connection)
                        id_venta_det = stored_procedures.get_max_idordenventasdet() + 1
                        
                        orden_venta_det = OrdenVentaDet(
                            id_venta_det, id_orden_venta, producto.id_producto, cantidad, producto.precio_unitario # type: ignore
                        )
                        
                        stored_procedures.create_ventas_det(orden_venta_det)
                        print("Added OrdenVentaDet:", orden_venta_det)  # Debug output
                except IndexError:
                    return render_template("error.html", ex="Vuelva pronto! No se preocupe.")
                    #print("Error! Index out of range!. Vuelva pronto... no se preocupe!")
                except Exception as e:
                    return render_template("error.html", ex="Error al agregar detalles a su compra")
                    #print("An error occurred while adding venta_det:", e)
                
            
            return redirect(url_for('single_venta_cab', venta_id=id_orden_venta))

        except ArithmeticError as ex:
            print("Ex:", ex)

    connection = getdb()
    stored_procedures = StoredProcedures(connection)
    tipo_entregas = stored_procedures.get_all_tipos_entrega()
    tipo_pagos = stored_procedures.get_all_tipos_pago()
    vendedores = stored_procedures.get_all_vendedores()
    return render_template("crear-orden-venta.html", clientes=clientes, productos_clientes=productos_clientes, tipo_entregas=tipo_entregas, tipo_pagos=tipo_pagos, vendedores=vendedores)


if __name__ == '__main__':
    app.run(debug=True)
