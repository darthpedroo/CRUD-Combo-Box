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

    @property
    def id_cliente(self):
        return self.__idCliente

    @property
    def razon_social(self):
        return self.__RazonSocial

    @property
    def marca(self):
        return self.__Marca

    @property
    def fecha_ingreso(self):
        return self.__FechaIngreso

    @property
    def calle(self):
        return self.__Calle

    @property
    def calle_nro(self):
        return self.__CalleNro

    @property
    def cod_pos(self):
        return self.__CodPos

    @property
    def localidad(self):
        return self.__Localidad

    @property
    def id_pcia(self):
        return self.__IdPcia

    @property
    def tel_1(self):
        return self.__Tel_1

    @property
    def tel_2(self):
        return self.__Tel_2

    @property
    def tel_3(self):
        return self.__Tel_3

    @property
    def correo(self):
        return self.__Correo

    @property
    def ult_trx(self):
        return self.__UltTrx

    @property
    def id_usr(self):
        return self.__idUsr

    @property
    def estado(self):
        return self.__Estado
