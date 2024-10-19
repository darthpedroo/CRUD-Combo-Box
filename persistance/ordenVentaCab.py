from datetime import datetime


class OrdenVentaCab:
    def __init__(self, id_orden_venta: int, numero_orden: int, fecha: str, fecha_entrega: str, id_vendedor: int,
                 id_cliente: int, tipo_entrega: int, tipo_pago: int, estado: int, subtotal: float, descuento: float, total: float, observaciones: str):
        self.id_orden_venta = id_orden_venta
        self.numero_orden = numero_orden
        self.fecha = fecha
        self.fecha_entrega = fecha_entrega
        self.id_vendedor = id_vendedor
        self.id_cliente = id_cliente
        self.tipo_entrega = tipo_entrega
        self.tipo_pago = tipo_pago
        self.estado = estado
        self.subtotal = subtotal
        self.descuento = descuento
        self.total = total
        self.observaciones = observaciones

   # def __str__(self) -> str:
   #     return str(self.numero_orden)
