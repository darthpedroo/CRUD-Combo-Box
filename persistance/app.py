""" Boilerin """
from flask import Flask
from persistance.db import getdb

app = Flask(__name__)

app.config['DB_HOST'] = 'localhost:3306'
app.config['DB_USER'] = 'root'
app.config['DB_PASSWORD'] = 'i2i0L2aH1'
app.config['DB_DATABASE'] = 'box'

@app.route('/')
def home():
    """ Skibidin """
    connection = getdb()
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM ordenventacab")
    results = cursor.fetchall()
    cursor.close()
    return str(results)

if __name__ == '__main__':
    app.run(debug=True)
