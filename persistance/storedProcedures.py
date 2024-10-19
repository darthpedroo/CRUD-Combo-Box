# user_dao_sqlite.py
from persistance.cliente import Cliente
from persistance.clienteDao import ClienteDAO
from persistance.db import getdb
from persistance.productosCliente import ProductoCLiente
from persistance.tipoEntrega import TipoEntrega


class StoredProcedures():
    def __init__(self, connection):
        self.connection = connection

    def procedure_get_productos_clientes_from_nombre(self, nombre_cliente: str):
        cursor = self.connection.cursor()
        cursor.execute(
            f"call box.producto_from_cliente_nombre('{nombre_cliente}')")
        results = cursor.fetchall()
        cursor.close()
        print("results: ", results)
        return [ProductoCLiente(*row) for row in results]

    def get_all_tipos_entrega(self):
        cursor = self.connection.cursor()
        cursor.execute(
            """SELECT * FROM box.tiposentrega;"""
        )
        results = cursor.fetchall()
        cursor.close()
        print("results: ", results)
        return [TipoEntrega(*row) for row in results]
