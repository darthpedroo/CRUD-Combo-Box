""" Module that contains flask application for purchase orders! """

from datetime import datetime
from flask import Flask, render_template, request, redirect
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
    cursor = connection.cursor()  # type: ignore ojito con esto
    cursor.execute("SELECT RazonSocial FROM clientes")
    results = cursor.fetchall()
    cursor.close()
    cleaned_results = [
        x[0].strip() for x in results if x[0].strip() # type: ignore
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
            productos_clientes = get_productos_clientes_from_nombre(nombre)
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


@app.route("/venta-cab/<int:venta_id>", methods=["GET"])
def single_venta_cab(venta_id):
    ventas_cab = MySQLOrdenVentaCab(getdb())
    single_venta_cab = ventas_cab.get_orden_venta_cab(venta_id)

    #cliente = MySQLClienteDAO(getdb())
    #datos_cliente = cliente.get_cliente(1) # HARDCODED VALUE, FIX IT!

    return render_template("single-venta-cab.html", single_venta_cab=single_venta_cab)


@app.route("/crear-orden-venta", methods=["GET", "POST"])
def crear_orden_venta():
    my_sql_orden_ventas_cab = MySQLOrdenVentaCab(getdb())
    clientes = get_all_clients()

    if request.method == "POST":
        try:
            troll_cantidad = []
            id_cliente = int(request.form["id_cliente"])
            productos_clientes = get_productos_clientes_from_nombre("Fender LLC")
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
                        
            for producto in productos_clientes:
                cantidad = request.form.get(
                    f'cantidad_{producto.id_producto}')
                if cantidad is not None:
                    cantidad = int(cantidad)  # Convert quantity to integer
                    troll_cantidad.append(cantidad)

                    if cantidad > 0:
                        connection = getdb()
                        stored_procedures = StoredProcedures(connection)
                        lista_registros_receta_mats = stored_procedures.get_receta_de_producto(
                            producto.id_producto)
                        for registro in lista_registros_receta_mats:
                            connection = getdb()
                            stored_procedures = StoredProcedures(connection)
                            if stored_procedures.articulo_esta_disponible(registro):
                                stored_procedures.add_to_articulos_reservados(
                                    registro, cantidad)
                            else: 
                                return render_template("youtube.com")
            
            orden_venta_cab = OrdenVentaCab(
                id_orden_venta, numero_orden, fecha_actual, fecha_entrega, # type: ignore
                id_vendedor, id_cliente, tipo_entrega, tipo_pago,
                estado, subtotal, descuento, total, observaciones
            )
            
            my_sql_orden_ventas_cab.create_orden_venta_cab(orden_venta_cab)
            print("productos clientes", productos_clientes)
            input("merac")

            for index, producto in enumerate(productos_clientes):
                cantidad = troll_cantidad[index]
                if cantidad > 0:
                    connection = getdb()
                    stored_procedures = StoredProcedures(connection)
                    id_venta_det = stored_procedures.get_max_idordenventasdet() +1
                    orden_venta_det = OrdenVentaDet(id_venta_det, id_orden_venta, producto.id_producto, cantidad, producto.precio_unitario) # type: ignore
                    stored_procedures.create_ventas_det(orden_venta_det)

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
