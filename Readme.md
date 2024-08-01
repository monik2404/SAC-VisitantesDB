# SAC-VisitantesDB

<div style="background-color: white; text-align: center; padding: 20px;">
  <img src="https://cdn-icons-png.flaticon.com/512/5526/5526442.png" style="height: 150px;">
</div>

SAC-VisitantesDB es un sistema de administración de control de visitantes diseñado para gestionar el registro de visitantes en un entorno residencial o empresarial. Este proyecto de base de datos MySQL facilita el seguimiento y administración de las visitas a través de diversas tablas.

## Tablas de la Base de Datos

### Usuarios
Tabla que almacena información sobre los usuarios del sistema.

- **ID_Usuario**: Identificador único del usuario.
- **Nombre_Usuario**: Nombre del usuario.
- **Correo_Electronico**: Correo electrónico del usuario.
- **Contraseña**: Contraseña del usuario.
- **Rol**: Rol del usuario (ej. administrador, recepcionista).

### Visitantes
Tabla que almacena información sobre los visitantes que acceden al recinto.

- **ID_Visitante**: Identificador único del visitante.
- **Nombre_Completo**: Nombre completo del visitante.
- **Documento_Identidad**: Número de identificación del visitante.
- **Telefono**: Número de contacto del visitante.

### Residentes
Tabla que almacena información sobre los residentes o empleados a quienes se les visitan.

- **ID_Residente**: Identificador único del residente.
- **Nombre_Completo**: Nombre completo del residente.
- **Documento_Identidad**: Número de identificación del residente.
- **Telefono**: Número de contacto del residente.
- **Direccion**: Dirección del residente dentro del recinto.

### Ubicaciones
Tabla que almacena información sobre las ubicaciones dentro del recinto.

- **ID_Ubicacion**: Identificador único de la ubicación.
- **Descripcion**: Descripción detallada de la ubicación (ej. Oficina 101, Sala de Reuniones).

### Motivos_Visita
Tabla que almacena los diferentes motivos de visita.

- **ID_Motivo**: Identificador único del motivo.
- **Descripcion**: Descripción del motivo de la visita (ej. Reunión, Entrega de documentos).

### Registros
Tabla principal que almacena los registros de las visitas.

- **ID_Registro**: Identificador único del registro.
- **Fecha_Hora_Entrada**: Fecha y hora de entrada del visitante.
- **ID_Usuario_Entrada**: Identificador del usuario que registra la entrada.
- **ID_Visitante**: Identificador del visitante (relación con la tabla Visitantes).
- **ID_Residente**: Identificador del residente (relación con la tabla Residentes).
- **ID_Ubicacion**: Identificador de la ubicación (relación con la tabla Ubicaciones).
- **ID_Motivo**: Identificador del motivo de la visita (relación con la tabla Motivos_Visita).
- **Fecha_Hora_Salida**: Fecha y hora de salida del visitante.
- **ID_Usuario_Salida**: Identificador del usuario que registra la salida.
- **Observaciones**: Observaciones adicionales del registro.

## Instalación

1. Clona el repositorio:
    ```bash
    git clone https://github.com/tuusuario/SAC-VisitantesDB.git
    ```
2. Importa la base de datos MySQL usando el archivo de script proporcionado:
    ```bash
    mysql -u tu_usuario -p tu_base_de_datos < SAC-VisitantesDB.sql
    ```

## Uso

1. Accede a tu servidor MySQL.
2. Utiliza la base de datos:
    ```sql
    USE SAC_VisitantesDB;
    ```
3. Inserta, actualiza o consulta datos según tus necesidades.

## Contribución

Las contribuciones son bienvenidas. Por favor, sigue los pasos a continuación para contribuir al proyecto:

1. Haz un fork del repositorio.
2. Crea una nueva rama (`git checkout -b feature/nueva-funcionalidad`).
3. Realiza tus cambios y haz commit (`git commit -am 'Añadir nueva funcionalidad'`).
4. Haz push a la rama (`git push origin feature/nueva-funcionalidad`).
5. Crea un nuevo Pull Request.

## Licencia

![MIT License](https://img.shields.io/badge/License-MIT-blue.svg)

Este proyecto está bajo la Licencia MIT. Consulta el archivo `LICENSE` para más detalles.




