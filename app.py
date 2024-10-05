""" Boilerin """
from flask import Flask
from persistance.db import getdb

app = Flask(__name__)

app.config['DB_HOST'] = 'localhost'
app.config['DB_USER'] = 'root'
app.config['DB_PASSWORD'] = 'i2i0L2aH1'
app.config['DB_DATABASE'] = 'box'

@app.route("/")
def home():
<<<<<<< HEAD
    items = ['Item 1', 'Item 2', 'Item 3']
    clientes = ["db.get_clientes()"]
    return render_template('index.html', username='John Doe', items=items)

=======
    """ Skibidin """
    connection = getdb()
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM ordenventacab")
    results = cursor.fetchall()
    cursor.close()
    return str(results)
>>>>>>> 003f7cb9c4647b651e5f50150b0d49909d6910d6

@app.route("/seleccionar-cliente")
def seleccionar_cliente():

    # clientes = db.get_clientes()
    clientes = ["db.get_clientes()"]

    return render_template("seleccionar-cliente.html", clientes=clientes)


if __name__ == '__main__':
    app.run(debug=True)
