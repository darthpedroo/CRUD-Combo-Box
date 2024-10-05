from abc import ABC, abstractmethod


class ClienteDAO(ABC):
    @abstractmethod
    def get_cliente(self, idcliente: int):
        pass

    @abstractmethod
    def get_all_clients(self):
        pass
