/*
   RESUELVE MEDIANTE SQL LAS SIGUIENTES CONSULTAS:
   ***********************************************
*/
#  1. Listar los nombres de los usuarios
SELECT * FROM tblusuarios;

#  2. Calcular el saldo máximo de los usuarios de sexo “Mujer”
SELECT MAX(saldo) FROM tblusuarios WHERE sexo='M';

#  3. Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SONY
SELECT nombre, telefono FROM tblusuarios WHERE marca IN ('NOKIA', 'BLACKBERRY', 'SONY');

#  4. Contar los usuarios sin saldo o inactivos
SELECT COUNT(*) FROM tblusuarios WHERE saldo = 0 OR not activo;

#  5. Listar el login de los usuarios con nivel 1, 2 o 3
SELECT usuario FROM tblusuarios WHERE nivel IN(1, 2, 3);

#  6. Listar los números de teléfono con saldo menor o igual a 300
SELECT telefono FROM tblusuarios WHERE saldo <=300;

#  7. Calcular la suma de los saldos de los usuarios de la compañia telefónica NEXTEL
SELECT SUM(saldo) FROM tblusuarios WHERE compañia='NEXTEL';

#  8. Contar el número de usuarios por compañía telefónica
SELECT compañia, COUNT(*) FROM tblusuarios GROUP BY compañia;

#  9. Contar el número de usuarios por nivel
SELECT nivel, COUNT(*) FROM tblusuarios GROUP BY nivel;

# 10. Listar el login de los usuarios con nivel 2
SELECT usuario FROM tblusuarios WHERE nivel = 2;

# 11. Mostrar el email de los usuarios que usan gmail
SELECT email FROM tblusuarios WHERE email LIKE '%@gmail.com';

# 12. Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA
SELECT nombre, telefono FROM tblusuarios WHERE marca IN('LG', 'SAMSUNG', 'MOTOROLA');

# 13. Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG o SAMSUNG
SELECT nombre, telefono FROM tblUsuarios WHERE marca NOT IN('LG', 'SAMSUNG');

# 14. Listar el login y teléfono de los usuarios con compañia telefónica IUSACELL
SELECT usuario, telefono FROM tblUsuarios WHERE compañia = 'IUSACELL';

# 15. Listar el login y teléfono de los usuarios con compañia telefónica que no sea TELCEL
SELECT usuario, telefono FROM tblUsuarios WHERE compañia <> "TELCEL";

# 16. Calcular el saldo promedio de los usuarios que tienen teléfono marca NOKIA
SELECT AVG(saldo) FROM tblUsuarios WHERE marca = 'NOKIA';

# 17. Listar el login y teléfono de los usuarios con compañia telefónica IUSACELL o AXEL
SELECT usuario, telefono FROM tblUsuarios WHERE compañia IN('IUSACELL', 'AXEL');

# 18. Mostrar el email de los usuarios que no usan yahoo
SELECT email FROM tblUsuarios WHERE email NOT LIKE '%yahoo.com';

# 19. Listar el login y teléfono de los usuarios con compañia telefónica que no sea TELCEL o IUSACELL
SELECT usuario, telefono FROM tblUsuarios WHERE compañia NOT IN('TELCEL', 'IUSACELL');

# 20. Listar el login y teléfono de los usuarios con compañia telefónica UNEFON
SELECT usuario, telefono FROM tblUsuarios WHERE compañia = 'UNEFON';

# 21. Listar las diferentes marcas de celular en orden alfabético descendentemente
SELECT DISTINCT marca FROM tblUsuarios ORDER BY marca DESC;

# 22. Listar las diferentes compañias en orden alfabético aleatorio
SELECT DISTINCT compañia FROM tblUsuarios ORDER BY RAND();

# 23. Listar el login de los usuarios con nivel 0 o 2
SELECT usuario FROM tblUsuarios WHERE nivel IN(0, 2);

# 24. Calcular el saldo promedio de los usuarios que tienen teléfono marca LG
SELECT AVG(saldo) FROM tblUsuarios WHERE marca = 'LG';

# 25. Listar el login de los usuarios con nivel 1 o 3
SELECT usuario FROM tblUsuarios WHERE nivel IN(1, 3);

# 26. Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca BLACKBERRY 
SELECT nombre, telefono FROM tblUsuarios WHERE marca <> "BLACKBERRY";

# 27. Listar el login de los usuarios con nivel 3
SELECT usuario FROM tblUsuarios WHERE nivel = 3;

# 28. Listar el login de los usuarios con nivel 0
SELECT usuario FROM tblUsuarios WHERE nivel = 0;

# 29. Contar el número de usuarios por sexo
SELECT sexo, COUNT(*) FROM tblUsuarios GROUP BY sexo;

# 30. Listar las diferentes compañias en orden alfabético descendentemente
SELECT DISTINCT compañia FROM tblUsuarios ORDER BY compañia DESC;

# 31. Listar el login de los usuarios inactivos
SELECT usuario FROM tblUsuarios WHERE NOT activo;

# 32. Calcular el saldo mínimo de los usuarios de sexo "Hombre"
SELECT MIN(saldo) FROM tblUsuarios WHERE sexo = 'H';

# 33. Contar el número de usuarios por marca de teléfono
SELECT marca, COUNT(*) FROM tblUsuarios GROUP BY marca;