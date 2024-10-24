class TipoEntrega():
    def __init__(self, id_tipo_entrega: int, nombre_tipo_entrega: str, detalle: str) -> None:
        self.id_tipo_entrega = id_tipo_entrega
        self.nombre_tipo_entrega = nombre_tipo_entrega
        self.detalle = detalle

    @property
    def get_id_tipo_entrega(self) -> int:
        return self.id_tipo_entrega

    @property
    def get_nombre_tipo_entrega(self) -> str:
        return self.nombre_tipo_entrega

    @property
    def get_detalle(self) -> str:
        return self.detalle