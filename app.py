""" Boilerin """

from flask import Flask, render_template
from persistance.db import getdb

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
    connection = getdb()
    cursor = connection.cursor()  # ojito con esto
    cursor.execute(f"call box.producto_from_cliente_nombre('{nombre}')")
    results = cursor.fetchall()
    cursor.close()
    cleaned_results = [
        x[0].strip() for x in results if x[0].strip()
    ]
    return results


@app.route("/")
def home():
    return render_template("index.html")


@app.route("/seleccionar-cliente")
def seleccionar_cliente():

    clientes = get_all_clients()
    return render_template("seleccionar-cliente.html", clientes=clientes)


@app.route("/productos-cliente")
def productos_clientes_from_nombre():

    productos_clientes = get_productos_clientes_from_nombre("Fender LLC")
    return render_template("productos-clientes.html", productos_clientes=productos_clientes)


if __name__ == '__main__':
    app.run(debug=True)
