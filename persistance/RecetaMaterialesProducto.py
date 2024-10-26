class RecetaMaterialesProducto:
    def __init__(self, id_receta_materiales,  id_articulo: str, id_producto: str, cantidad: int, valor: int, stock: int) -> None:
        self.id_receta_materiales = id_receta_materiales
        self.id_articulo = id_articulo
        self.id_producto = id_producto
        self.cantidad = cantidad
        self.valor = valor
        self.stock = stock
