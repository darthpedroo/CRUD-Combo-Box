""" Boilerin """

from flask import Flask, render_template, request
from persistance.db import getdb
from persistance.mysqlclienteDao import MySQLClienteDAO
from persistance.storedProcedures import StoredProcedures
from persistance.mysqlOrdenVentaCab import MySQLVentaCab

app = Flask(__name__)

app.config['DB_HOST'] = 'localhost'
app.config['DB_USER'] = 'root'
app.config['DB_PASSWORD'] = 'i2i0L2aH1'
app.config['DB_DATABASE'] = 'box'


def get_all_clients():

    connection = getdb()
    cursor = connection.cursor()  # ojito con esto
    cursor.execute("SELECT RazonSocial FROM clientes")
    results = cursor.fetchall()
    cursor.close()
    cleaned_results = [
        x[0].strip() for x in results if x[0].strip()
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
            return render_template("productos-clientes.html", productos_clientes=productos_clientes, clientes=clientes,)
        except Exception as ex:
            print("boiler behaviour")
    return render_template("productos-clientes.html", productos_clientes=[], clientes=clientes)


@app.route("/ventas-cab", methods=["GET"])
def ventas_cab():
    ventas_cab = MySQLVentaCab(getdb())
    ventas_cab.get_all_orden_venta_cab()
    return render_template("all-ventas-cab.html")


@app.route("/venta-cab/<int:venta_id>", methods=["GET"])
def single_venta_cab(venta_id):
    ventas_cab = MySQLVentaCab(getdb())
    single_venta_cab = ventas_cab.get_orden_venta_cab(venta_id)

    cliente = MySQLClienteDAO(getdb())
    datos_cliente = cliente.get_cliente(1)  # HARDCODED VALUE, FIX IT!

    return render_template("single-venta-cab.html", single_venta_cab=single_venta_cab)


if __name__ == '__main__':
    app.run(debug=True)
