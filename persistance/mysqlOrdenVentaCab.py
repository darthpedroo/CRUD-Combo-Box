# user_dao_sqlite.py
from persistance.ordenVentaCab import OrdenVentaCab
from persistance.ordenVentaCabDao import OrdenVentaCabDao
from persistance.db import getdb


class MySQLVentaCab(OrdenVentaCabDao):
    def __init__(self, connection):
        self.connection = connection

    def get_all_orden_venta_cab(self):
        cursor = self.connection.cursor()
        cursor.execute(
            "SELECT * FROM ordenventacab")
        row = cursor.fetchone()
        return OrdenVentaCab(*row) if row else None

    def get_orden_venta_cab(self, id_orden_venta_cab: int):
        cursor = self.connection.cursor()
        cursor.execute(
            "SELECT * FROM ordenventacab WHERE idOrdenVenta = %s", (id_orden_venta_cab,))
        rows = cursor.fetchall()
        return [OrdenVentaCab(*row) for row in rows]

    def create_orden_venta_cab(self, new_orden_venta_cab: OrdenVentaCab):
        cursor = self.connection.cursor()
        cursor.execute(
            "INSERT INTO ordenventacab (idOrdenVenta, NumeroOrden, Fecha, FechaEntrega, idVendedor, idCliente, TipoEntrega, TipoPago, Estado, Subtotal, Descuento, Total, Observaciones) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)",
            (new_orden_venta_cab.id_orden_venta,
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
             new_orden_venta_cab.observaciones))
        self.connection.commit()
