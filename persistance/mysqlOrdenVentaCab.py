# user_dao_sqlite.py
from persistance.ordenVentaCab import OrdenVentaCab
from persistance.ordenVentaCabDao import OrdenVentaCabDao
from persistance.db import getdb


class MySQLOrdenVentaCab(OrdenVentaCabDao):
    def __init__(self, connection):
        self.connection = connection

    def get_all_orden_venta_cab(self):
        if not self.connection or not self.connection.is_connected():
            print("Connection not available; attempting to reconnect.")
            self.connection = getdb()  # Re-establish the connection

        cursor = self.connection.cursor() # type: ignore
        cursor.execute("SELECT * FROM ordenventacab")
        rows = []
        while True:
            row = cursor.fetchone()
            if row is None:
                break
            rows.append(OrdenVentaCab(*row)) # type: ignore
        return rows

    def get_orden_venta_cab(self, id_orden_venta_cab: int):
        cursor = self.connection.cursor(buffered=True) # type: ignore
        cursor.execute(
            "SELECT * FROM ordenventacab WHERE idOrdenVenta = %s", (id_orden_venta_cab,))
        rows = cursor.fetchall()
        return [OrdenVentaCab(*row) for row in rows] # type: ignore

    def create_orden_venta_cab(self, new_orden_venta_cab: OrdenVentaCab):
        cursor = self.connection.cursor(buffered=True)  # type: ignore Use a buffered cursor

        # Debugging: Print the attributes of the object
        print("Attributes of new_orden_venta_cab:")
        for key, value in vars(new_orden_venta_cab).items():
            print(f"{key}: {value}")

        # Execute the insert statement
        cursor.execute(
            """
            INSERT INTO ordenventacab (idOrdenVenta, NumeroOrden, Fecha, FechaEntrega, idVendedor, idCliente, TipoEntrega, TipoPago, Estado, Subtotal, Descuento, Total, Observaciones)
            VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)
            """,
            (
                new_orden_venta_cab.id_orden_venta,
                new_orden_venta_cab.numero_orden,
                new_orden_venta_cab.fecha,
                new_orden_venta_cab.fecha_entrega,
                new_orden_venta_cab.id_vendedor,
                new_orden_venta_cab.id_cliente,
                new_orden_venta_cab.tipo_entrega,
                new_orden_venta_cab.tipo_pago,
                new_orden_venta_cab.estado,
                new_orden_venta_cab.subtotal,
                new_orden_venta_cab.descuento,
                new_orden_venta_cab.total,
                new_orden_venta_cab.observaciones
            )
        )

        self.connection.commit() # type: ignore
