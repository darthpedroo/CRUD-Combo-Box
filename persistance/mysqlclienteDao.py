# user_dao_sqlite.py
from persistance.cliente import Cliente
from persistance.clienteDao import ClienteDAO
from persistance.db import getdb


class MySQLClienteDAO(ClienteDAO):
    def __init__(self, connection):
        self.connection = connection

    def get_cliente(self, cliente_id: int):
        cursor = self.connection.cursor()
        cursor.execute(
            "SELECT * FROM clientes WHERE idCliente = ?", (cliente_id,))
        row = cursor.fetchone()
        return Cliente(*row) if row else None

    def get_all_clients(self):
        cursor = self.connection.cursor()
        cursor.execute("SELECT * FROM clientes")
        rows = cursor.fetchall()
        return [Cliente(*row) for row in rows]
