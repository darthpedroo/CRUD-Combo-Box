from flask import Flask, current_app, g
import mysql.connector
from mysql.connector import Error

def getdb():
    """Get a database connection."""
    if 'db' not in g or not g.db.is_connected():
        try:
            g.db = mysql.connector.connect(
                host=current_app.config['DB_HOST'],
                user=current_app.config['DB_USER'],
                password=current_app.config['DB_PASSWORD'],
                database=current_app.config['DB_DATABASE'],
            )
            if g.db.is_connected():
                print("Database connection established.")
        except Error as e:
            print(f"Error connecting to MySQL: {e}")
            g.db = None
    return g.db

def close_db(_=None):
    """Close the database connection."""
    db = g.pop('db', None)
    if db is not None:
        db.close()
        print("Database connection closed.")

app = Flask(__name__)

app.teardown_appcontext(close_db)

if __name__ == "__main__":
    app.run(debug=True)
