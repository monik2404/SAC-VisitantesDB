
  -- Tablas base datos control de visitantes
  -- Elaborado por: Monik P.
  -- Version: 1
  -- 2024

-- tabla usuarios
CREATE TABLE IF NOT EXISTS usuarios (
    ID_Usuario INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Usuario VARCHAR(50) NOT NULL,
    Correo_Electronico VARCHAR(100) NOT NULL UNIQUE,
    Contraseña VARCHAR(255) NOT NULL,
    Rol ENUM('administrador', 'recepcionista') NOT NULL
);

-- tabla visitantes
CREATE TABLE IF NOT EXISTS visitantes (
    ID_Visitante INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Completo VARCHAR(100) NOT NULL,
    Documento_Identidad VARCHAR(20) NOT NULL UNIQUE,
    Telefono VARCHAR(15)
);

-- tabla residentes
CREATE TABLE IF NOT EXISTS residentes (
    ID_Residente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Completo VARCHAR(100) NOT NULL,
    Documento_Identidad VARCHAR(20) NOT NULL UNIQUE,
    Telefono VARCHAR(15),
    Direccion VARCHAR(255)
);

-- tabla ubicaciones
CREATE TABLE IF NOT EXISTS ubicaciones (
    ID_Ubicacion INT AUTO_INCREMENT PRIMARY KEY,
    Descripcion VARCHAR(100) NOT NULL
);

-- tabla motivos_visita
CREATE TABLE IF NOT EXISTS motivos_visita (
    ID_Motivo INT AUTO_INCREMENT PRIMARY KEY,
    Descripcion VARCHAR(100) NOT NULL
);

-- tabla registros
CREATE TABLE IF NOT EXISTS registros (
    ID_Registro INT AUTO_INCREMENT PRIMARY KEY,
    Fecha_Hora_Entrada DATETIME NOT NULL,
    ID_Usuario_Entrada INT NOT NULL,
    ID_Visitante INT NOT NULL,
    ID_Residente INT NOT NULL,
    ID_Ubicacion INT NOT NULL,
    ID_Motivo INT NOT NULL,
    Fecha_Hora_Salida DATETIME,
    ID_Usuario_Salida INT,
    Observaciones TEXT,
    FOREIGN KEY (ID_Usuario_Entrada) REFERENCES usuarios(ID_Usuario),
    FOREIGN KEY (ID_Visitante) REFERENCES visitantes(ID_Visitante),
    FOREIGN KEY (ID_Residente) REFERENCES residentes(ID_Residente),
    FOREIGN KEY (ID_Ubicacion) REFERENCES ubicaciones(ID_Ubicacion),
    FOREIGN KEY (ID_Motivo) REFERENCES motivos_visita(ID_Motivo),
    FOREIGN KEY (ID_Usuario_Salida) REFERENCES usuarios(ID_Usuario)
);
