from flask import Flask, render_template

app = Flask(__name__)


@app.route("/")
def home():
    items = ['Item 1', 'Item 2', 'Item 3']
    clientes = ["db.get_clientes()"]
    return render_template('index.html', username='John Doe', items=items)


@app.route("/seleccionar-cliente")
def seleccionar_cliente():

    # clientes = db.get_clientes()
    clientes = ["db.get_clientes()"]

    return render_template("seleccionar-cliente.html", clientes=clientes)


if __name__ == '__main__':
    app.run(debug=True)
