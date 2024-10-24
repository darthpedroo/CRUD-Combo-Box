class Vendedor():
    def __init__(self, id_empleado: int, id_sector: int, id_cargo: int, nombre: str, apellido: str, dni: str, estado: str, fecing: str, fecnac: str) -> None:
        self.id_empleado = id_empleado
        self.id_sector = id_sector
        self.id_cargo = id_cargo
        self.nombre = nombre
        self.apellido = apellido
        self.dni = dni
        self.estado = estado
        self.fecing = fecing
        self.fecnac = fecnac
