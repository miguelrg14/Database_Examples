-- Creamos nueva base de datos
CREATE DATABASE esne;

USE esne;

CREATE TABLE tabla01 (
	nombre VARCHAR(20),
	edad integer
);

INSERT INTO tabla01 (nombre, edad) VALUES ('Ana',29);
INSERT INTO tabla01 (nombre, edad) VALUES ('Belen',29);
INSERT INTO tabla01 (nombre, edad) VALUES ('Carlos',29);
INSERT INTO tabla01 (nombre, edad) VALUES ('Diana',29);
INSERT INTO tabla01 (nombre, edad) VALUES ('Eva',29);
INSERT INTO tabla01 (nombre, edad) VALUES ('Fran',29);
INSERT INTO tabla01 (nombre, edad) VALUES ('Gerardo',29);

SELECT * FROM tabla02;

DROP TABLE tabla02

CREATE TABLE tabla01 (
	id INT,
	nombre VARCHAR(50),
	Biografia TEXT,
	Edad TINYINT,
	Distancia INT,
	Acumulado FLOAT(5,2),
	Sueldo DECIMAL(7,2),
	Semaforo ENUM('Rojo', 'Amarillo', 'Verde'),
	Estilos SET('Folk','Pop','Rock','Clasica','Jazz'),
	Cumple DATE,
	Cita TIME,
	Momento DATETIME
);

INSERT INTO tabla01(id, nombre, Biografia, Edad, Distancia, Acumulado, Sueldo, Semaforo, Estilos, Cumple, Cita, Momento)
	VALUES(
		2,
		"Rodrigo Perez",
		"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
		21,
		30,
		50.02,
		10000.99,
		"Verde",
		"Folk,Rock",
		"2020-02-01",
		"10:56",
		"2021-03-01 10:46"
	);

CREATE TABLE tabla02 (
		login VARCHAR(15) PRIMARY KEY,
		pass VARCHAR(8) NOT NULL,
		email VARCHAR(30) UNIQUE,
		fecha_ingreso DATETIME DEFAULT CURRENT_TIMESTAMP 
);

INSERT INTO tabla02 (login, pass, email) VALUES
	(
		'antonuio',
		'ghwio9',
		'antonio@gmail.com'
	);


-- Creamos tabla03
CREATE TABLE tabla03 (
		id INT PRIMARY KEY AUTO_INCREMENT, 
		nombre VARCHAR(30) NOT NULL,
		edad INT,
		fecha DATETIME DEFAULT CURRENT_TIMESTAMP 
);

INSERT INTO tabla03 (clave primaria, autoincremental) VALUES 
	(
		123456,
		"Pana Miguel",
		19,
		12/01/2021
	);
	
	
-- Creamos tabla usuarios
CREATE TABLE usuarios (
    id INT primary key auto_increment,
    nombre varchar(30) NOT NULL,
    edad TINYINT,
    f_alta datetime DEFAULT CURRENT_TIMESTAMP
);

-- Añadimos registros a tabla usuarios
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

-- Creamos la tabla comentarios
CREATE TABLE comentarios (
	id int PRIMARY KEY AUTO_INCREMENT,
	usuarios_id INT,
	titulo VARCHAR(20),
	contenido VARCHAR(200),
	puntuacion TINYINT,
	FOREIGN KEY (usuarios_id)
		REFERENCES usuarios(id)
		ON DELETE CASCADE
);

-- Inserto comentarios
INSERT INTO comentarios (id, usuarios_id, titulo, contenido, puntuacion) VALUES (1, 1, 'Comentario 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vel nunc commodo, placerat turpis vitae, hendrerit nulla. Cras eu ornare justo.', 2);
INSERT INTO comentarios (id, usuarios_id, titulo, contenido, puntuacion) VALUES (2, 1, 'Comentario 2', 'Duis mauris lacus, laoreet nec est sit amet, rutrum pretium nisl. Donec egestas augue turpis, a facilisis orci suscipit eu', 8);
INSERT INTO comentarios (id, usuarios_id, titulo, contenido, puntuacion) VALUES (3, 2, 'Comentario 3', 'Phasellus rhoncus risus a facilisis tempor.', NULL);
INSERT INTO comentarios (id, usuarios_id, titulo, contenido, puntuacion) VALUES (4, 3, 'Comentario 4', 'Proin ullamcorper, erat quis bibendum eleifend, justo erat bibendum velit, vel eleifend augue mi ut urna', 6);
INSERT INTO comentarios (id, usuarios_id, titulo, contenido, puntuacion) VALUES (5, 3, 'Comentario 5', 'Etiam vestibulum vestibulum blandit. Sed consequat arcu in arcu rhoncus tempor', NULL);
INSERT INTO comentarios (id, usuarios_id, titulo, contenido, puntuacion) VALUES (6, 3, 'Comentario 6', 'Etiam vestibulum vestibulum blandit. Sed consequat arcu in arcu rhoncus tempor. Nam mollis, tellus a finibus porta, nulla arcu ultricies purus, a maximus elit tellus fermentum odio', 8);

DROP TABLE comentarios
DROP TABLE usuarios


/*
   EJERCICIO 01
   ************
*/

/*
   Creamos tabla usuarios
*/
CREATE TABLE tblUsuarios (
   id INT PRIMARY KEY AUTO_INCREMENT,
   usuario VARCHAR(20),
   nombre VARCHAR(20),
   sexo VARCHAR(1),
   nivel TINYINT,
   email VARCHAR(50),
   telefono VARCHAR(20),
   marca VARCHAR(20),
   compañia VARCHAR(20),
   saldo FLOAT,
   activo BOOLEAN
);

/*
   Añadimos registros a la tabla usuarios
*/

INSERT INTO tblUsuarios VALUES ('1','BRE2271','BRENDA','M','2','brenda@live.com','655-330-5736','SAMSUNG','IUSACELL','100','1');
INSERT INTO tblUsuarios VALUES ('2','OSC4677','OSCAR','H','3','oscar@gmail.com','655-143-4181','LG','TELCEL','0','1');
INSERT INTO tblUsuarios VALUES ('3','JOS7086','JOSE','H','3','francisco@gmail.com','655-143-3922','NOKIA','MOVISTAR','150','1');
INSERT INTO tblUsuarios VALUES ('4','LUI6115','LUIS','H','0','enrique@outlook.com','655-137-1279','SAMSUNG','TELCEL','50','1');
INSERT INTO tblUsuarios VALUES ('5','LUI7072','LUIS','H','1','luis@hotmail.com','655-100-8260','NOKIA','IUSACELL','50','0');
INSERT INTO tblUsuarios VALUES ('6','DAN2832','DANIEL','H','0','daniel@outlook.com','655-145-2586','SONY','UNEFON','100','1');
INSERT INTO tblUsuarios VALUES ('7','JAQ5351','JAQUELINE','M','0','jaqueline@outlook.com','655-330-5514','BLACKBERRY','AXEL','0','1');
INSERT INTO tblUsuarios VALUES ('8','ROM6520','ROMAN','H','2','roman@gmail.com','655-330-3263','LG','IUSACELL','50','1');
INSERT INTO tblUsuarios VALUES ('9','BLA9739','BLAS','H','0','blas@hotmail.com','655-330-3871','LG','UNEFON','100','1');
INSERT INTO tblUsuarios VALUES ('10','JES4752','JESSICA','M','1','jessica@hotmail.com','655-143-6861','SAMSUNG','TELCEL','500','1');
INSERT INTO tblUsuarios VALUES ('11','DIA6570','DIANA','M','1','diana@live.com','655-143-3952','SONY','UNEFON','100','0');
INSERT INTO tblUsuarios VALUES ('12','RIC8283','RICARDO','H','2','ricardo@hotmail.com','655-145-6049','MOTOROLA','IUSACELL','150','1');
INSERT INTO tblUsuarios VALUES ('13','VAL6882','VALENTINA','M','0','valentina@live.com','655-137-4253','BLACKBERRY','AT&T','50','0');
INSERT INTO tblUsuarios VALUES ('14','BRE8106','BRENDA','M','3','brenda2@gmail.com','655-100-1351','MOTOROLA','NEXTEL','150','1');
INSERT INTO tblUsuarios VALUES ('15','LUC4982','LUCIA','M','3','lucia@gmail.com','655-145-4992','BLACKBERRY','IUSACELL','0','1');
INSERT INTO tblUsuarios VALUES ('16','JUA2337','JUAN','H','0','juan@outlook.com','655-100-6517','SAMSUNG','AXEL','0','0');
INSERT INTO tblUsuarios VALUES ('17','ELP2984','ELPIDIO','H','1','elpidio@outlook.com','655-145-9938','MOTOROLA','MOVISTAR','500','1');
INSERT INTO tblUsuarios VALUES ('18','JES9640','JESSICA','M','3','jessica2@live.com','655-330-5143','SONY','IUSACELL','200','1');
INSERT INTO tblUsuarios VALUES ('19','LET4015','LETICIA','M','2','leticia@yahoo.com','655-143-4019','BLACKBERRY','UNEFON','100','1');
INSERT INTO tblUsuarios VALUES ('20','LUI1076','LUIS','H','3','luis2@live.com','655-100-5085','SONY','UNEFON','150','1');
INSERT INTO tblUsuarios VALUES ('21','HUG5441','HUGO','H','2','hugo@live.com','655-137-3935','MOTOROLA','AT&T','500','1');


/*
   RESUELVE MEDIANTE SQL LAS SIGUIENTES CONSULTAS:
   ***********************************************
     1. Listar los nombres de los usuarios
     2. Calcular el saldo máximo de los usuarios de sexo “Mujer”
     3. Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SONY
     4. Contar los usuarios sin saldo o inactivos
     5. Listar el login de los usuarios con nivel 1, 2 o 3
     6. Listar los números de teléfono con saldo menor o igual a 300
     7. Calcular la suma de los saldos de los usuarios de la compañia telefónica NEXTEL
     8. Contar el número de usuarios por compañía telefónica
     9. Contar el número de usuarios por nivel
    10. Listar el login de los usuarios con nivel 2
    11. Mostrar el email de los usuarios que usan gmail
    12. Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA
    13. Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG o SAMSUNG
    14. Listar el login y teléfono de los usuarios con compañia telefónica IUSACELL
    15. Listar el login y teléfono de los usuarios con compañia telefónica que no sea TELCEL
    16. Calcular el saldo promedio de los usuarios que tienen teléfono marca NOKIA
    17. Listar el login y teléfono de los usuarios con compañia telefónica IUSACELL o AXEL
    18. Mostrar el email de los usuarios que no usan yahoo
    19. Listar el login y teléfono de los usuarios con compañia telefónica que no sea TELCEL o IUSACELL
    20. Listar el login y teléfono de los usuarios con compañia telefónica UNEFON
    21. Listar las diferentes marcas de celular en orden alfabético descendentemente
    22. Listar las diferentes compañias en orden alfabético aleatorio
    23. Listar el login de los usuarios con nivel 0 o 2
    24. Calcular el saldo promedio de los usuarios que tienen teléfono marca LG
    25. Listar el login de los usuarios con nivel 1 o 3
    26. Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca BLACKBERRY 
    27. Listar el login de los usuarios con nivel 3
    28. Listar el login de los usuarios con nivel 0
    29. Contar el número de usuarios por sexo
    30. Listar las diferentes compañias en orden alfabético descendentemente
    31. Listar el login de los usuarios inactivos
    32. Calcular el saldo mínimo de los usuarios de sexo "Hombre"
    33. Contar el número de usuarios por marca de teléfono
*/

-- 1. Listar los nombres de los usuarios
SELECT * FROM tblusuarios;

-- 2. Calcular el saldo máximo de los usuarios de sexo “Mujer”
SELECT MAX(saldo)
FROM tblUsuarios
WHERE sexo = "M";

-- 3. Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SONY
SELECT nombre, telefono, marca
FROM tblusuarios
WHERE marca IN ("NOKIA", "BLACKBERRY", "SONY");

-- 4. Contar los usuarios sin saldo o inactivos
SELECT COUNT(*)
FROM tblusuarios
WHERE saldo = 0 OR activo = 0;

-- 5. Listar el login de los usuarios con nivel 1, 2 o 3
SELECT usuario
FROM tblusuarios
WHERE nivel IN (1, 2, 3);

-- 6. Listar los números de teléfono con saldo menor o igual a 300
SELECT telefono
FROM tblusuarios
WHERE saldo <= 300;

-- 7. Calcular la suma de los saldos de los usuarios de la compañia telefónica NEXTEL
SELECT sum(saldo)
FROM tblusuarios
WHERE compañia = "NEXTEL";
	  
-- 8. Contar el número de usuarios por compañía telefónica
SELECT compañia, COUNT(usuario)
FROM tblusuarios
GROUP BY compañia;
	  
-- 9. Contar el número de usuarios por nivel
SELECT nivel, COUNT(usuario)
FROM tblUsuarios
GROUP BY nivel;

-- 10. Listar el login de los usuarios con nivel 2
SELECT usuario 
FROM tblUsuarios
WHERE nivel = 2;

-- 11. Mostrar el email de los usuarios que usan gmail
SELECT email
FROM tblusuarios
-- El % aquí significa "lo q sea"
WHERE email LIKE "%@gmail.com";
	 
-- 12. Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA
SELECT nombre & telefono 
FROM tblusuarios
WHERE usuarios(telefono = lg, samsung, motorola)
-- Este no funcionaaa!!!!!!!!

-- 13. Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG o SAMSUNG
    
	 
-- 14. Listar el login y teléfono de los usuarios con compañia telefónica IUSACELL


-- 15. Listar el login y teléfono de los usuarios con compañia telefónica que no sea TELCEL


-- 16. Calcular el saldo promedio de los usuarios que tienen teléfono marca NOKIA
    
	 
-- 17. Listar el login y teléfono de los usuarios con compañia telefónica IUSACELL o AXEL
    
	 
-- 18. Mostrar el email de los usuarios que no usan yahoo


-- 19. Listar el login y teléfono de los usuarios con compañia telefónica que no sea TELCEL o IUSACELL


-- 20. Listar el login y teléfono de los usuarios con compañia telefónica UNEFON


-- 21. Listar las diferentes marcas de celular en orden alfabético descendentemente


-- 22. Listar las diferentes compañias en orden alfabético aleatorio


-- 23. Listar el login de los usuarios con nivel 0 o 2


-- 24. Calcular el saldo promedio de los usuarios que tienen teléfono marca LG


-- 25. Listar el login de los usuarios con nivel 1 o 3


-- 26. Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca BLACKBERRY 


-- 27. Listar el login de los usuarios con nivel 3


-- 28. Listar el login de los usuarios con nivel 0


-- 29. Contar el número de usuarios por sexo


-- 30. Listar las diferentes compañias en orden alfabético descendentemente


-- 31. Listar el login de los usuarios inactivos


-- 32. Calcular el saldo mínimo de los usuarios de sexo "Hombre"


-- 33. Contar el número de usuarios por marca de teléfono