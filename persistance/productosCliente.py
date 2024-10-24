class ProductoCliente:
    def __init__(self, id_cliente, razon_social, id_producto, nombre_producto, precio_unitario=None):
        self.id_cliente = id_cliente
        self.razon_social = razon_social
        self.id_producto = id_producto
        self.nombre_producto = nombre_producto
        self.precio_unitario = precio_unitario

    @property
    def get_id_cliente(self):
        return self.id_cliente

    @property
    def get_razon_social(self):
        return self.razon_social

    @property
    def get_id_producto(self):
        return self.id_producto

    @property
    def get_nombre_producto(self):
        return self.nombre_producto

    @property
    def get_precio_unitario(self):
        return self.precio_unitario