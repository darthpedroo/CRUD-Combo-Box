""" Boilerin """

from flask import Flask, render_template, request
from persistance.db import getdb
from persistance.mysqlclienteDao import MySQLClienteDAO
from persistance.storedProcedures import StoredProcedures

app = Flask(__name__)

app.config['DB_HOST'] = 'localhost'
app.config['DB_USER'] = 'root'
app.config['DB_PASSWORD'] = 'i2i0L2aH1'
app.config['DB_DATABASE'] = 'box'


def get_all_clients():

    mysqlclienteDao = MySQLClienteDAO(getdb())
    clientes = mysqlclienteDao.get_all_clients()
    clean_clients = []
    for cliente in clientes:
        clean_clients.append(cliente.get_razon_social())
        print(cliente.get_razon_social())
    return clean_clients


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


if __name__ == '__main__':
    app.run(debug=True)
