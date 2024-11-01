# user_dao_sqlite.py
from persistance.cliente import Cliente
from persistance.clienteDao import ClienteDAO
from persistance.db import getdb
from persistance.productosCliente import ProductoCliente
from persistance.tipoEntrega import TipoEntrega
from persistance.TipoPago import TipoPago
from persistance.vendedor import Vendedor
from persistance.productosCliente import ProductoCliente
from persistance.RecetaMaterialesProducto import RecetaMaterialesProducto
from persistance.mysqlordenventadet import OrdenVentaDet
from persistance.ordenVentaCab import OrdenVentaCab


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
        return [ProductoCliente(*row) for row in results]

    def get_all_tipos_entrega(self):
        cursor = self.connection.cursor()
        cursor.execute(
            """SELECT * FROM box.tiposentrega;"""
        )
        results = cursor.fetchall()
        cursor.close()
        print("results: ", results)
        return [TipoEntrega(*row) for row in results]

    def get_tipo_entrega_name_from_id(self, id_tipo_entrega: int):
        cursor = self.connection.cursor()
        cursor.execute(
            f"""SELECT * FROM box.tiposentrega WHERE idTipoEntrega = {
                id_tipo_entrega} ;"""
        )
        results = cursor.fetchall()
        cursor.close()
        print("results: ", results)
        return [TipoEntrega(*row) for row in results]

    def get_all_tipos_pago(self):
        cursor = self.connection.cursor()
        cursor.execute(
            """SELECT * FROM box.tipospago;"""
        )
        results = cursor.fetchall()
        cursor.close()
        print("results: ", results)
        return [TipoPago(*row) for row in results]

    def get_tipo_pago_name_from_id(self, id_tipo_pago: int):
        cursor = self.connection.cursor()
        cursor.execute(
            f"""SELECT * FROM box.tipospago WHERE idTipoPago = {
                id_tipo_pago} ;"""
        )
        results = cursor.fetchall()
        cursor.close()
        print("results: ", results)
        return [TipoPago(*row) for row in results]

    def get_all_vendedores(self):
        cursor = self.connection.cursor()
        cursor.execute(
            """SELECT * FROM box.empleados where idcargo = 9;"""
        )
        results = cursor.fetchall()
        cursor.close()
        return [Vendedor(*row) for row in results]

    def get_all_ventas_det(self, id_orden_venta_cab: int):
        cursor = self.connection.cursor()
        cursor.execute(
            f"""SELECT * FROM box.ordenventadet where idOrdenVenta ={
                id_orden_venta_cab};"""
        )
        results = cursor.fetchall()
        cursor.close()
        return [OrdenVentaDet(*row) for row in results]

    def get_all_orden_venta_cab_ids(self):
        cursor = self.connection.cursor()
        cursor.execute(
            """SELECT idOrdenVenta FROM box.ordenventacab;"""
        )
        results = cursor.fetchall()
        cursor.close()
        return [row[0] for row in results]

    def get_receta_de_producto(self, producto: str):
        cursor = self.connection.cursor()
        cursor.execute(
            f"call box.Receta_Mat_Producto('{producto}')")
        results = cursor.fetchall()
        cursor.close()
        return [RecetaMaterialesProducto(*row) for row in results]

    def add_to_articulos_reservados(self, registro_receta_materiales: RecetaMaterialesProducto, cantidad_articulo_ingresado: int, orden_venta_cab: OrdenVentaCab):

        cursor = self.connection.cursor(buffered=True)

        cursor.execute(
            "SELECT MAX(idArticuloReservado) FROM articulosreservados;")
        max_id = cursor.fetchone()[0]

        new_id_articulo_reservado = (max_id + 1) if max_id is not None else 1

        cursor.execute(
            """
            INSERT INTO articulosreservados (idArticuloReservado, idArticulo, Cantidad, idReceta, idProducto, idOrdenVentaCab) VALUES (%s, %s, %s, %s,%s,%s);
            """,
            (
                new_id_articulo_reservado,
                registro_receta_materiales.id_articulo,
                registro_receta_materiales.cantidad * cantidad_articulo_ingresado,
                registro_receta_materiales.id_receta_materiales,
                registro_receta_materiales.id_producto,
                orden_venta_cab.id_orden_venta
            )
        )

        self.connection.commit()

    def articulo_esta_disponible(self, registro: RecetaMaterialesProducto, cantidad: int):
        cursor = self.connection.cursor()
        cursor.execute(
            f"call box.Check_Stock_Articulo('{registro.id_articulo}','{cantidad}')")
        results = cursor.fetchall()
        cursor.close()
        if results[0][1] == 1:
            return True
        return False

    def producto_tiene_receta_de_materiales(self, producto: ProductoCliente):
        cursor = self.connection.cursor()
        cursor.execute(
            f"call box.producto_tiene_receta_de_materiales('{producto.get_id_producto}')")
        results = cursor.fetchall()
        cursor.close()
        if results[0][1] == 1:
            return True
        return False

    def get_max_idordenventasdet(self):
        cursor = self.connection.cursor(buffered=True)
        cursor.execute(
            "SELECT MAX(idOrdenVentaDet) FROM ordenventadet;")
        max_id = cursor.fetchone()[0]

        new_idordenventasdet = (max_id) if max_id is not None else 0
        return new_idordenventasdet

    def create_ventas_det(self, orden_venta_det):
        cursor = self.connection.cursor(buffered=True)
        cursor.execute(
            """
            INSERT INTO `box`.`ordenventadet` (`idOrdenVentaDet`, `idOrdenVenta`, `idProducto`, `Cant`, `Importe`, `PrecioUnitario`) VALUES (%s, %s, %s, %s, %s, %s);
            """,
            (
                orden_venta_det.id_orden_venta_det,
                orden_venta_det.id_orden_venta_cab,
                orden_venta_det.id_producto,
                orden_venta_det.cant,
                orden_venta_det.importe,
                orden_venta_det.precio_unitario
            )
        )
        self.connection.commit()

    def get_cliente_from_id(self, id_cliente):
        cursor = self.connection.cursor()
        cursor.execute(
            f"""SELECT * FROM box.clientes where idcliente = {id_cliente};"""
        )
        results = cursor.fetchall()
        cursor.close()
        return [Cliente(*row) for row in results]
