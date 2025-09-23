-- Creamos una nueva base de datos
CREATE DATABASE esne;

-- Usamos la nueva base de datos
USE esne;

-- Creamos una nueva tabla en esta base de datos
CREATE TABLE tabla01 ( nombre VARCHAR(25));

--Insertamos datos en Tabla01
INSERT INTO tabla01 (nombre) VALUES ('Ana Pérez López');
INSERT INTO tabla01 (nombre) VALUES ('Belén García Méndez');
INSERT INTO tabla01 (nombre) VALUES ('Carlos Fernández López');
INSERT INTO tabla01 (nombre) VALUES ('Diana Monterroso Alegre');
INSERT INTO tabla01 (nombre) VALUES ('Ernesto Gómez Guzmán');

--Eliminamos tabla01
DROP TABLE tabla01;

--Creamos tabla01 de nuevo
CREATE TABLE tabla01 (
		id INT,
		Nombre VARCHAR(25),
		Biografia TEXT,
		Edad TINYINT,
		Distancia INT,
		Acumulado FLOAT(5,2),
		Sueldo DECIMAL (7,2),
		Semaforo ENUM('Rojo', 'Amarillo', 'Verde'),
		Estilos SET('Rock', 'Jazz', 'Folk', 'Pop', 'Clásica'),
		Cumpleanos DATE,
		Cita TIME,
		Momento DATETIME
		);

--Insertamos filas en tabla01;
INSERT INTO tabla01 (id, Nombre, Biografia, Edad, Distancia, Acumulado, Sueldo, Semaforo, Estilos, Cumpleanos, Cita, Momento)	VALUES
		(1,
		'Carlos Fernández López',
		'Phasellus rhoncus risus a facilisis tempor. Maecenas a fermentum erat. Nam eget sem vestibulum, scelerisque massa sed, consequat dui. In in ligula quis mi luctus lacinia. Phasellus ut ornare felis. Proin ullamcorper, erat quis bibendum eleifend, justo erat bibendum velit, vel eleifend augue mi ut urna. Pellentesque quis porttitor enim, ultricies facilisis diam. Quisque et ullamcorper nisi. Vivamus ac egestas ipsum. Donec euismod aliquam varius. Aenean hendrerit, odio ut efficitur sodales, lectus tortor pulvinar risus, a rhoncus felis odio et lectus.',
		32,
		30154,
		985.99,
		11200.01,
		'Rojo',
		'Pop,Jazz',
		'2020-03-21',
		'10:45',
		'2015-05-03 08:20:00');
			
INSERT INTO tabla01 (id, Nombre, Biografia, Edad, Distancia, Acumulado, Sueldo, Semaforo, Estilos, Cumpleanos, Cita, Momento)	VALUES
		(2,
		'Francisco Gómez Pérez',
		'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vel nunc commodo, placerat turpis vitae, hendrerit nulla. Cras eu ornare justo. Duis mauris lacus, laoreet nec est sit amet, rutrum pretium nisl. Donec egestas augue turpis, a facilisis orci suscipit eu. In hac habitasse platea dictumst. Pellentesque scelerisque, nisi non pellentesque hendrerit, elit lectus faucibus tortor, eget pellentesque lacus nibh at ipsum. Etiam nec felis sollicitudin, porta sem in, congue massa. Donec a orci sit amet erat iaculis placerat non sit amet lectus. Maecenas placerat mauris vitae aliquam fringilla. Mauris tincidunt ut leo sed porttitor. In vel diam odio. Vestibulum ultricies metus felis, a mattis urna tristique non. Praesent odio nisi, malesuada sit amet lorem vel, commodo molestie lorem. Curabitur fermentum id odio id mollis. Sed id purus quam.',
		25,
		10175,
		125.01,
		50.01,
		'Amarillo',
		'Folk,Pop,Clasica',
		'2021-02-25',
		'12:30',
		'2019-10-30 10:45:00');

--Creamos tabla02 de modo que
--Login sea clave primaria
--Password no pueda ser nulo
--Email no puede repetirse
--Fecha_ingreso toma por defecto la fecha y la hora actual
--Sueldo tiene un valor entre 0 y 65000 (aproximadamente)

-- DROP TABLE tabla02;

CREATE TABLE tabla02 (
	Login VARCHAR(15) PRIMARY KEY,
	Pass VARCHAR(8) NOT NULL,
	Email VARCHAR(30) UNIQUE,
	Fecha_Ingreso DATETIME DEFAULT CURRENT_TIMESTAMP,
	Sueldo SMALLINT UNSIGNED 
);

--Insertamos registros en tabla02
INSERT INTO tabla02 (Login, Pass, Email, Fecha_Ingreso, Sueldo) VALUES ('ana', '671687', 'ana@gmail.com', '2021-02-27 19:13:30', 1000);
INSERT INTO tabla02 (Login, Pass, Email, Fecha_Ingreso, Sueldo) VALUES ('belen', '67286798', 'belen@yahoo.com', '2019-04-25 21:11:40', 2000);
INSERT INTO tabla02 (Login, Pass, Email, Fecha_Ingreso, Sueldo) VALUES ('carlos', '353232', 'carlos@terra.com', '2023-01-01 16:16:44', 500);
INSERT INTO tabla02 (Login, Pass, Email, Fecha_Ingreso, Sueldo) VALUES ('joaquin', '4534', 'diana@ole.com', '2022-12-29 19:13:59', 2500);
INSERT INTO tabla02 (Login, Pass, Email, Fecha_Ingreso, Sueldo) VALUES ('diana', '532244', 'ernesto@microsoft.com', '2024-05-24 19:17:21', 35);


--Creamos tabla03 con clave foránea para el campo Login de la tabla tabla02

-- DROP TABLE tabla03;

CREATE TABLE tabla03 (
	id INT PRIMARY  KEY  AUTO_INCREMENT,
	tabla02_Login VARCHAR(15),
	FOREIGN KEY (tabla02_Login)
		REFERENCES tabla02(Login)
		ON DELETE CASCADE 
);


--OTRO EJEMPLO DE RELACION 1:N
--****************************

--Creamos tabla usuarios
--DROP TABLE usuarios;

CREATE TABLE usuarios (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(40),
	edad TINYINT,
	f_alta DATETIME DEFAULT CURRENT_TIMESTAMP
);

--Añadimos registros a tabla usuarios
INSERT INTO usuarios (id, nombre, edad, f_alta) VALUES (1, 'Ana', 12, '2021-02-27 21:55:56');
INSERT INTO usuarios (id, nombre, edad, f_alta) VALUES (2, 'Belen', 34, '2021-02-27 21:56:07');
INSERT INTO usuarios (id, nombre, edad, f_alta) VALUES (3, 'Carlos', 34, '2021-02-27 21:56:13');
INSERT INTO usuarios (id, nombre, edad, f_alta) VALUES (4, 'Diana', 43, '2021-02-27 21:56:19');
INSERT INTO usuarios (id, nombre, edad, f_alta) VALUES (5, 'Ernesto', 48, '2021-02-27 21:56:31');
INSERT INTO usuarios (id, nombre, edad, f_alta) VALUES (6, 'Francisco', 77, '2021-02-27 21:56:37');
INSERT INTO usuarios (id, nombre, edad, f_alta) VALUES (7, 'Gloria', 19, '2021-02-27 21:56:47');
INSERT INTO usuarios (id, nombre, edad, f_alta) VALUES (8, 'Hugo', 46, '2021-02-27 21:56:54');
INSERT INTO usuarios (id, nombre, edad, f_alta) VALUES (9, 'Iago', 29, '2021-02-27 21:57:03');
INSERT INTO usuarios (id, nombre, edad, f_alta) VALUES (10, 'Josefina', 28, '2021-02-27 21:57:12');

 
 
 --Creamos tabla comentarios con clave externa a usuarios
 
 -- DROP TABLE comentarios;
 
 CREATE TABLE comentarios (
 	id INT PRIMARY KEY AUTO_INCREMENT,
 	usuarios_id INT,
 	titulo VARCHAR(20),
 	contenido VARCHAR(300),
 	puntuacion TINYINT,
 	FOREIGN KEY (usuarios_id)
 		REFERENCES usuarios(id)
 		ON DELETE CASCADE 
);

--Añadimos registros a la tabla comentarios
INSERT INTO comentarios (id, usuarios_id, titulo, contenido, puntuacion) VALUES (1, 1, 'Comentario 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vel nunc commodo, placerat turpis vitae, hendrerit nulla. Cras eu ornare justo.', 2);
INSERT INTO comentarios (id, usuarios_id, titulo, contenido, puntuacion) VALUES (2, 1, 'Comentario 2', 'Duis mauris lacus, laoreet nec est sit amet, rutrum pretium nisl. Donec egestas augue turpis, a facilisis orci suscipit eu', 8);
INSERT INTO comentarios (id, usuarios_id, titulo, contenido, puntuacion) VALUES (3, 2, 'Comentario 3', 'Phasellus rhoncus risus a facilisis tempor.', NULL);
INSERT INTO comentarios (id, usuarios_id, titulo, contenido, puntuacion) VALUES (4, 3, 'Comentario 4', 'Proin ullamcorper, erat quis bibendum eleifend, justo erat bibendum velit, vel eleifend augue mi ut urna', 6);
INSERT INTO comentarios (id, usuarios_id, titulo, contenido, puntuacion) VALUES (5, 3, 'Comentario 5', 'Etiam vestibulum vestibulum blandit. Sed consequat arcu in arcu rhoncus tempor', NULL);
INSERT INTO comentarios (id, usuarios_id, titulo, contenido, puntuacion) VALUES (6, 3, 'Comentario 6', 'Etiam vestibulum vestibulum blandit. Sed consequat arcu in arcu rhoncus tempor. Nam mollis, tellus a finibus porta, nulla arcu ultricies purus, a maximus elit tellus fermentum odio', 8);
