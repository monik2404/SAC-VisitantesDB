-- datos de usuarios
INSERT INTO usuarios (Nombre_Usuario, Correo_Electronico, Contraseña, Rol) VALUES
('admin1', 'admin1@example.com', 'contraseña1', 'administrador'),
('admin2', 'admin2@example.com', 'contraseña2', 'administrador'),
('recp1', 'recp1@example.com', 'contraseña3', 'recepcionista'),
('recp2', 'recp2@example.com', 'contraseña4', 'recepcionista'),
('recp3', 'recp3@example.com', 'contraseña5', 'recepcionista'),
('recp4', 'recp4@example.com', 'contraseña6', 'recepcionista'),
('recp5', 'recp5@example.com', 'contraseña7', 'recepcionista'),
('recp6', 'recp6@example.com', 'contraseña8', 'recepcionista'),
('recp7', 'recp7@example.com', 'contraseña9', 'recepcionista'),
('recp8', 'recp8@example.com', 'contraseña10', 'recepcionista'),
('recp9', 'recp9@example.com', 'contraseña11', 'recepcionista'),
('recp10', 'recp10@example.com', 'contraseña12', 'recepcionista'),
('recp11', 'recp11@example.com', 'contraseña13', 'recepcionista'),
('recp12', 'recp12@example.com', 'contraseña14', 'recepcionista'),
('recp13', 'recp13@example.com', 'contraseña15', 'recepcionista');

-- datos de visitantes
INSERT INTO visitantes (Nombre_Completo, Documento_Identidad, Telefono) VALUES
('Juan Perez', 'V12345678', '555-1234'),
('Maria Lopez', 'V23456789', '555-2345'),
('Carlos Gonzalez', 'V34567890', '555-3456'),
('Ana Martinez', 'V45678901', '555-4567'),
('Luis Hernandez', 'V56789012', '555-5678'),
('Jose Ramirez', 'V67890123', '555-6789'),
('Laura Diaz', 'V78901234', '555-7890'),
('Pedro Torres', 'V89012345', '555-8901'),
('Marta Sanchez', 'V90123456', '555-9012'),
('Roberto Jimenez', 'V01234567', '555-0123'),
('Lucia Morales', 'V12345098', '555-1098'),
('Jorge Ortiz', 'V23456109', '555-2109'),
('Elena Castillo', 'V34567210', '555-3210'),
('Ricardo Vargas', 'V45678321', '555-4321'),
('Patricia Reyes', 'V56789432', '555-5432');

-- datos de residentes
INSERT INTO residentes (Nombre_Completo, Documento_Identidad, Telefono, Direccion) VALUES
('Alberto Fernandez', 'R12345678', '555-1111', 'Calle 1, Edificio A, Departamento 101'),
('Sofia Gomez', 'R23456789', '555-2222', 'Calle 2, Edificio B, Departamento 202'),
('Miguel Castro', 'R34567890', '555-3333', 'Calle 3, Edificio C, Departamento 303'),
('Valeria Mendez', 'R45678901', '555-4444', 'Calle 4, Edificio D, Departamento 404'),
('Fernando Ruiz', 'R56789012', '555-5555', 'Calle 5, Edificio E, Departamento 505'),
('Adriana Silva', 'R67890123', '555-6666', 'Calle 6, Edificio F, Departamento 606'),
('Diego Soto', 'R78901234', '555-7777', 'Calle 7, Edificio G, Departamento 707'),
('Camila Nuñez', 'R89012345', '555-8888', 'Calle 8, Edificio H, Departamento 808'),
('Javier Paredes', 'R90123456', '555-9999', 'Calle 9, Edificio I, Departamento 909'),
('Natalia Torres', 'R01234567', '555-0000', 'Calle 10, Edificio J, Departamento 1010'),
('Mario Vargas', 'R12345098', '555-1010', 'Calle 11, Edificio K, Departamento 1111'),
('Gabriela Rodriguez', 'R23456109', '555-2020', 'Calle 12, Edificio L, Departamento 1212'),
('Hugo Ramirez', 'R34567210', '555-3030', 'Calle 13, Edificio M, Departamento 1313'),
('Angela Fuentes', 'R45678321', '555-4040', 'Calle 14, Edificio N, Departamento 1414'),
('Esteban Lopez', 'R56789432', '555-5050', 'Calle 15, Edificio O, Departamento 1515');


-- datos ubicaciones
INSERT INTO ubicaciones (Descripcion) VALUES
('Oficina 101'),
('Sala de Reuniones 202'),
('Oficina 303'),
('Lobby Principal'),
('Comedor'),
('Sala de Juntas'),
('Oficina 404'),
('Patio Central'),
('Oficina 505'),
('Terraza'),
('Oficina 606'),
('Sala de Conferencias'),
('Oficina 707'),
('Recepción'),
('Oficina 808');

-- datos motivos visita
INSERT INTO motivos_visita (Descripcion) VALUES
('Reunión'),
('Entrega de Documentos'),
('Visita Personal'),
('Entrevista'),
('Mantenimiento'),
('Inspección'),
('Reparaciones'),
('Supervisión'),
('Entrega de Paquetes'),
('Auditoría'),
('Consultoría'),
('Capacitación'),
('Asesoría'),
('Atención a Clientes'),
('Otro');

-- datos registros
INSERT INTO registros (Fecha_Hora_Entrada, ID_Usuario_Entrada, ID_Visitante, ID_Residente, ID_Ubicacion, ID_Motivo, Fecha_Hora_Salida, ID_Usuario_Salida, Observaciones) VALUES
('2024-07-28 08:00:00', 1, 1, 1, 1, 1, '2024-07-28 10:00:00', 2, 'Todo bien.'),
('2024-07-28 09:00:00', 2, 2, 2, 2, 2, '2024-07-28 11:00:00', 1, 'Entrega exitosa.'),
('2024-07-28 10:00:00', 3, 3, 3, 3, 3, '2024-07-28 12:00:00', 2, 'Entrevista completa.'),
('2024-07-28 11:00:00', 4, 4, 4, 4, 4, '2024-07-28 13:00:00', 3, 'Mantenimiento realizado.'),
('2024-07-28 12:00:00', 5, 5, 5, 5, 5, '2024-07-28 14:00:00', 4, 'Inspección completada.'),
('2024-07-28 13:00:00', 6, 6, 6, 6, 6, '2024-07-28 15:00:00', 5, 'Reparaciones efectuadas.'),
('2024-07-28 14:00:00', 7, 7, 7, 7, 7, '2024-07-28 16:00:00', 6, 'Supervisión terminada.'),
('2024-07-28 15:00:00', 8, 8, 8, 8, 8, '2024-07-28 17:00:00', 7, 'Paquete entregado.'),
('2024-07-28 16:00:00', 9, 9, 9, 9, 9, '2024-07-28 18:00:00', 8, 'Auditoría realizada.'),
('2024-07-28 17:00:00', 10, 10, 10, 10, 10, '2024-07-28 19:00:00', 9, 'Consultoría terminada.'),
('2024-07-28 18:00:00', 11, 11, 11, 11, 11, '2024-07-28 20:00:00', 10, 'Capacitación completada.'),
('2024-07-28 19:00:00', 12, 12, 12, 12, 12, '2024-07-28 21:00:00', 11, 'Asesoría proporcionada.'),
('2024-07-28 20:00:00', 13, 13, 13, 13, 13, '2024-07-28 22:00:00', 12, 'Atención a clientes realizada.'),
('2024-07-28 21:00:00', 14, 14, 14, 14, 14, '2024-07-28 23:00:00', 13, 'Visita completada.'),
('2024-07-28 22:00:00', 15, 15, 15, 15, 15, '2024-07-29 00:00:00', 14, 'Sin observaciones.');

