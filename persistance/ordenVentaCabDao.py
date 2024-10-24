from abc import ABC, abstractmethod
from datetime import datetime
from persistance.ordenVentaCab import OrdenVentaCab


class OrdenVentaCabDao(ABC):
    @abstractmethod
    def get_orden_venta_cab(self, id_venta_cab: int):
        pass

    @abstractmethod
    def get_all_orden_venta_cab(self):
        pass

    @abstractmethod
    def create_orden_venta_cab(self, new_orden_venta_cab: OrdenVentaCab):
        pass
