create database Veterinaria
go
use Veterinaria
go

CREATE TABLE mae_usuarios (
    login_usuario varchar(50) PRIMARY KEY,
    clave_usuario varchar(50) NOT NULL,
    nombre_usuario varchar(100) NOT NULL
);

INSERT INTO Mae_Usuarios (Login_Usuario,Clave_Usuario,Nombre_Usuario) VALUES ('Lmiguel', 120193, 'Luis miguel')
INSERT INTO Mae_Usuarios (Login_Usuario,Clave_Usuario,Nombre_Usuario) VALUES ('Ccastro', 101214, 'Cristian Castro')
INSERT INTO Mae_Usuarios (Login_Usuario,Clave_Usuario,Nombre_Usuario) VALUES ('Jlopez', 151212, 'Jenifer lopez')

SELECT* FROM mae_usuarios

delete from mae_usuarios where login_usuario = 'Jlopez'

create table Mae_Mascotas (
ID_Mascota int identity (1,1) PRIMARY KEY,
Nombre_Mascota varchar(50) UNIQUE,
Tipo_Mascota varchar(100),
Comida_Favorita varchar (100)
)

INSERT INTO Mae_Mascotas ( Nombre_Mascota, Tipo_Mascota, Comida_Favorita) VALUES ('Piolin', 'Ave', 'Semillas')
INSERT INTO Mae_Mascotas ( Nombre_Mascota, Tipo_Mascota, Comida_Favorita) VALUES ('Nemo', 'Acuaticos', 'Planton')
INSERT INTO Mae_Mascotas ( Nombre_Mascota, Tipo_Mascota, Comida_Favorita) VALUES ('Beethoven', 'Perro', 'Superperro')
INSERT INTO Mae_Mascotas ( Nombre_Mascota, Tipo_Mascota, Comida_Favorita) VALUES ('Silvester', 'Felino', 'Felino')
INSERT INTO Mae_Mascotas ( Nombre_Mascota, Tipo_Mascota, Comida_Favorita) VALUES ('Rene', 'Rana', 'Rana')
INSERT INTO Mae_Mascotas ( Nombre_Mascota, Tipo_Mascota, Comida_Favorita) VALUES ('Dory', 'Acuatico', 'Acuatico')

SELECT * FROM Mae_Mascotas


create table Control_Citas(
mascotas int,
Proxima_Fecha date not null,
Medico_Asignado varchar(100) not null
CONSTRAINT FK_mascotas FOREIGN KEY (mascotas) REFERENCES Mae_Mascotas(ID_Mascota)
)

INSERT INTO Control_Citas (mascotas, Proxima_Fecha, Medico_Asignado) VALUES ( 1,'2016/06/25', 'Dr.Ricado Perez')
INSERT INTO Control_Citas (mascotas, Proxima_Fecha, Medico_Asignado) VALUES ( 2, '2016/07/01', 'Dra.Flora')
INSERT INTO Control_Citas (mascotas, Proxima_Fecha, Medico_Asignado) VALUES ( 3, '2016/06/24', 'Dra.Karla Moralez')
INSERT INTO Control_Citas (mascotas, Proxima_Fecha, Medico_Asignado) VALUES ( 4, '2016/06/17', 'Dr.Carlos Castro')
INSERT INTO Control_Citas (mascotas, Proxima_Fecha, Medico_Asignado) VALUES ( 5, '2016/07/30', 'Dra.Flora')
INSERT INTO Control_Citas (mascotas, Proxima_Fecha, Medico_Asignado) VALUES ( 6, '2016/06/23', 'Dra.Maria Jose Aguilar')

SELECT * FROM Control_Citas
DELETE FROM Control_Citas WHERE mascotas= 4





