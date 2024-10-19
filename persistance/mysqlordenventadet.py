class OrdenVentaDet():
    def __init__(self, id_orden_venta_det: int, id_orden_venta_cab, id_producto, cant: int,  precio_unitario: int):
        self.id_orden_venta_det = id_orden_venta_det
        self.id_orden_venta_cab = id_orden_venta_cab
        self.id_producto = id_producto
        self.cant = cant
        self.precio_unitario = precio_unitario
        self.importe = self.cant * self.precio_unitario
