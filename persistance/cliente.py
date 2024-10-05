class Cliente:
    def __init__(self, idCliente, RazonSocial, Marca, FechaIngreso, Calle, CalleNro, CodPos, Localidad, IdPcia, Tel_1, Tel_2, Tel_3, Correo, UltTrx, idUsr, Estado):
        self.__idCliente = idCliente
        self.__RazonSocial = RazonSocial
        self.__Marca = Marca
        self.__FechaIngreso = FechaIngreso
        self.__Calle = Calle
        self.__CalleNro = CalleNro
        self.__CodPos = CodPos
        self.__Localidad = Localidad
        self.__IdPcia = IdPcia
        self.__Tel_1 = Tel_1
        self.__Tel_2 = Tel_2
        self.__Tel_3 = Tel_3
        self.__Correo = Correo
        self.__UltTrx = UltTrx
        self.__idUsr = idUsr
        self.__Estado = Estado

    def __repr__(self):
        return (f"Cliente(idCliente={self.__idCliente}, RazonSocial='{self.__RazonSocial}', Marca='{self.__Marca}', "
                f"FechaIngreso='{self.__FechaIngreso}', Calle='{self.__Calle}', CalleNro='{self.__CalleNro}', "
                f"CodPos='{self.__CodPos}', Localidad='{self.__Localidad}', IdPcia='{self.__IdPcia}', "
                f"Tel_1='{self.__Tel_1}', Tel_2='{self.__Tel_2}', Tel_3='{self.__Tel_3}', Correo='{self.__Correo}', "
                f"UltTrx='{self.__UltTrx}', idUsr='{self.__idUsr}', Estado='{self.__Estado}')")

    def get_id_cliente(self):
        return self.__idCliente

    def get_razon_social(self):
        return self.__RazonSocial
