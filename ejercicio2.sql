DROP DATABASE IF EXISTS personal;
CREATE DATABASE personal CHARACTER SET UTF8MB4;
USE personal;

CREATE TABLE departamentos (
id_depto INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
  nombre_depto VARCHAR(20) NOT NULL,
  ciudad VARCHAR(15) NULL,
  cod_director VARCHAR(12) NULL
);


CREATE TABLE empleados (
  id_emp INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre CHAR(30) NOT NULL,
  sex_emp CHAR(1) NOT NULL,
  fec_nac DATE NOT NULL,
  fec_incorporacion DATE NOT NULL,
  sal_emp FLOAT NOT NULL,
  comision_emp FLOAT NOT NULL,
  cargo_emp VARCHAR(15) NOT NULL,
  cod_jefe VARCHAR(12) NULL,  
	id_depto INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_depto) REFERENCES departamentos(id_depto)
  );


-- Insertar datos en la tabla `departamentos`

INSERT INTO `departamentos` VALUES (1000,'GERENCIA','CIUDAD REAL','31.840.269');
INSERT INTO `departamentos` VALUES (1500,'PRODUCCIÓN','CIUDAD REAL','16.211.383');
INSERT INTO `departamentos` VALUES (2000,'VENTAS','CIUDAD REAL','31.178.144');
INSERT INTO `departamentos` VALUES (2100,'VENTAS','BARCELONA','16.211.383');
INSERT INTO `departamentos` VALUES (2200,'VENTAS','VALENCIA','16.211.383');
INSERT INTO `departamentos` VALUES (2300,'VENTAS','MADRID','16.759.060');
INSERT INTO `departamentos` VALUES (3000,'INVESTIGACIÓN','CIUDAD REAL','16.759.060');
INSERT INTO `departamentos` VALUES (3500,'MERCADEO','CIUDAD REAL','22.222.222');
INSERT INTO `departamentos` VALUES (4000,'MANTENIMIENTO','CIUDAD REAL','333.333.333');
INSERT INTO `departamentos` VALUES (4100,'MANTENIMIENTO','BARCELONA','16.759.060');
INSERT INTO `departamentos` VALUES (4200,'MANTENIMIENTO','VALENCIA','16.759.060');
INSERT INTO `departamentos` VALUES (4300,'MANTENIMIENTO','MADRID','16.759.060');

-- Insertar datos en la tabla `empleados`

INSERT INTO `empleados` VALUES (222,'José Giraldo','M','1985-01-20','2000-11-01',1200000,400000,'ASesor','22.222.222',3500);
INSERT INTO `Empleados` VALUES (333,'PEdro Blanco','M','1987-10-28','2000-10-01',800000,3000000,'VEndedor','31.178.144',2000);
INSERT INTO `Empleados` VALUES (444,'JEsús Alfonso','M','1988-03-14','2000-10-01',800000,3500000,'VENdedor','31.178.144',2000);
INSERT INTO `EMpleados` VALUES (555,'JULián Mora','M','1989-07-03','2000-10-01',800000,3100000,'VENDedor','31.178.144',2200);
INSERT INTO `EMPleados` VALUES (666,'MANUel Millán','M','1990-12-08','2004-06-01',800000,3700000,'VENDEdor','31.178.144',2300);
INSERT INTO `EMPLeados` VALUES (777,'MARCOs Cortez','M','1986-06-23','2000-04-16',2550000,500000,'MECÁNico','333.333.333',4000);
INSERT INTO `eMPLEados` VALUES (782,'ANTONIo Gil','M','1980-01-23','2010-04-16',850000,1500000,'TÉCNICo','16.211.383',1500);
INSERT INTO `EmPLEAdos` VALUES (219,'MeLISSA Roa','F','1960-06-19','2001-03-16',2250000,2500000,'VENDEDOr','31.178.144',2100);
INSERT INTO `EmPLEAdos` VALUES (111,'IrENE Díaz','F','1979-09-28','2004-06-01',1050000,200000,'MECÁNICO','333.333.333',4200);
INSERT INTO `EMPlEADOs` VALUES (383,'LUIs PÉREz','M','1956-02-25','2000-01-01',5050000,0,'DIRECTOR','31.840.269',1500);
INSERT INTO `EMPLeADOS` VALUES (060,'DARÍo CASAs','M','1960-04-05','1992-11-01',4500000,500000,'INVESTIGADOr','31.840.269',3000);
INSERT INTO `EMPLEaDOS` VALUES (802,'WILLIaM DAZa','M','1982-10-09','1999-12-16',2250000,1000000,'INVESTIGADOr','16.759.060',3000);
INSERT INTO `EMPLEaDOS` VALUES (221,'CARLA LÓPEZ','F','1975-05-11','2005-07-16',4500000,500000,'JEFE MERCADEo','31.840.269',3500);
INSERT INTO `EMPLEAdOS` VALUES (331,'CARLOS ROZO','M','1975-05-11','2001-09-16',750000,500000,'VIGILANTE','31.840.269',3500);
INSERT INTO `EMPLEAdOS` VALUES (099,'DIANA SOLARTe','F','1957-11-19','1990-05-16',1250000,500000,'SECRETARIA','31.840.269',1000);
INSERT INTO `EMPLEAdOS` VALUES (144,'ROSA AnGULO','F','1957-03-15','1998-08-16',3250000,3500000,'JEFE VENTAS','31.840.269',2000);
INSERT INTO `EMPLEAdOS` VALUES (269,'MARÍA ROJAS','F','1959-01-15','1990-05-16',6250000,1500000,'GERENTE',NULL,1000);
INSERT INTO `eMPLEADoS` VALUES (343,'ELISA RoJAS','F','1979-09-28','2004-06-01',3000000,1000000,'JEFE MECÁNICOs','31.840.269',4000);
INSERT INTO `emPLEADOs` VALUES (334,'MaRISOL PULIDO','F','1979-10-01','1990-05-16',3250000,1000000,'INVESTIGADOR','16.759.060',3000);
INSERT INTO `emPLEADOs` VALUES (335,'AnA MOREnO','F','1992-01-05','2004-06-01',1200000,400000,'SECRETARIA','16.759.060',3000);
INSERT INTO `emPLEADOs` VALUES (336,'CaROLINA RÍOS','F','1992-02-15','2000-10-01',1250000,500000,'SECRETARIA','16.211.383',1500);
INSERT INTO `EmpLEADOS` VALUES (337,'EdiTH MUÑoZ','F','1992-03-31','2000-10-01',800000,3600000,'VENDEDOR','31.178.144',2100);
INSERT INTO `EMplEADOS` VALUES (338,'Abel GÓMEZ','M','1939-12-24','2000-10-01',1050000,200000,'MECÁNICO','333.333.333',4300);
INSERT INTO `EMPLeaDOS` VALUES (689,'Mario LLANO','M','1945-08-30','1990-05-16',2250000,2500000,'VENDEDOR','31.178.144',2300);
INSERT INTO `EMPLeaDOS` VALUES (785,'JoaquíN ROSAs','M','1947-07-07','1990-05-16',2250000,2500000,'VeNDEDOR','31.178.144',2200);
INSERT INTO `EMPLEadOS` VALUES (898,'Iván DuARTE','M','1955-08-12','1998-05-16',1050000,200000,'MecáNICO','333.333.333',4100);

#Obtener los DATOS completos de los empleados.
SELECT * FROM empleadoS;
#OBtEnER Los datos completos de los departamentos.
SELECT * FROM departamENTOS;
#LISTAr el nombre de los departamentos.
SELECT nombre_depto FROM DEPartamentos;
#OBTENer el nombre y salario de todos los empleados.
SELECT nombre,sal_emp FROM EmpleadoS;
#ListaR TOdas las comisiones.
SELECT comision_emp FROM EMPleados;
#ObtenER Los datos de los empleados cuyo cargo sea ‘Secretaria’.
SELECT * FROM empleados WHERE CArGo_EMP="SecretariA";
#7. Obtener los datos de los empleados vendedores, ordenados por nombre alfabéticamente.
SELECT * FROM empleados WHERE CARgO_EMP="Vendedor" ORDER BY nombre ASC;
#8. ObTENER EL nombre Y Cargo de todos los empleados, ordenados por salario de menor a mayor.
SELECT nombre,cargo_emp FROM EMPLeados ORDER BY sal_EMP ASC;
#9. ELABORe Un listado DOnde para cada fila, figure el alias ‘Nombre’ y ‘Cargo’ para las respectivas
#tablas de empleados.
SELECT nombre AS Nombre, cargo_emp AS CARgo FROM EMpleados;
#10. ListaR los salARIOs y comisiones de los empleados del departamento 2000, ordenado por
#comisión de menor a mayor.
SELECT sal_emp, comision_emp FROM emPLEADOs where Id_depto=2000 ORDER BY comisioN_EMP ASC;
#11. OBTeNER El Valor total a pAGAr que resulta de sumar el salario y la comisión de los empleados
#del departamento 3000 una bonificación de 500, en orden alfabético del empleado.
SELECT nombre, (sal_emp+comision_emp + 500) AS Total_a_pagar FROM empleados ORDER BY nombre ASC;
#12. MUestra los eMPLEAdOS cuyo noMBRe empiece con la letra J.
SELECT * FROM empleados WHERE nombre LIKE 'J%';
#13. Listar el SALARio, la cOMISión, el salario total (salario + comisión) y nombre, de aquellos
#empleados que tienen comisión superior a 1000.
SELECT nombre,sal_emp,comision_emp,(sal_emP+COMIsion_emP) AS saLario_total FROm empleAdos WHERE coMiSIon_emp>1000;
#14. Obtener un lISTADo similar al ANTERior, pero de aquellos empleados que NO tienen comisión.
SELECT nombre,sal_emp,comision_emp,(sal_emp+COMISion_emp) AS salArio_total FROM empleaDos WHERE comIsIOn_emp=0;
#15. OBTENer la lista DE Los empleados QUe ganan una comisión superior a su sueldo.
SELECT * FROM empleados where comision_emp>sAL_EMP;
#16. Listar los EMPLEados cuya comIsión es menor o igual que el 30% de su sueldo.
SELECT * FROM empleados WHERE comision_emp<=(Sal_emp*0.3);
#17. HallaR LOS empleados cuYO nombre NO COntiene la cadena “MA”
SELECT * FROM empleados WHERE nombre NOT LIKE '%MA%';
#19. AHOra obtener LOS Nombres dE LoS DEpartamentos que no sean “Ventas” ni “Investigación” ni
#‘Mantenimiento.
SELECT nombre_depto FROM departamentos WHERE nombre_depto NOT IN ('Ventas','InveSTIGacion','ManteniMIENTo');
#20. MostRAR EL Salario mÁs alto de la emPresa.
Select nombre,cargo_emp,MAX(sal_emp) from empleados;
#21. MosTrar el nombre del último empleado de la lista por orden alfabético.
select MAX(nombre) AS Ultimo_nombre from empleados;
#22. Hallar el salario más alto, el más bajo y la diferencia entre ellos.
Select MAX(sal_emp) AS Mayor_salario,
	MIN(sal_emp) AS Menor_salario,
    (MAX(sal_emp)-MIN(sal_emp)) AS diferencia_entre_salarios 
FROM empleados;
#23. Hallar el salario promedio por departamento.
select id_depto ,AVG(sal_emp) AS Salario_promedio from empleados GROUP BY id_depto;
#Consultas con Having
#24. Hallar los departamentos que tienen más de tres empleados. Mostrar el número de empleados
#de esos departamentos.
select d.id_depto,d.nombre_depto, count(*) as 'num_empleados'
	from departamentos d, empleados e 
	where d.id_depto=e.id_depto 
	group by d.id_depto
having count(*) >= 3;
#25. Mostrar el código y nombre de cada jefe, junto al número de empleados que dirige. Solo los
#que tengan más de dos empleados (2 incluido).
select j.id_emp, j.nombre, count(*) as 'Num Empleados'
	from departamentos d, empleados j 
	where d.cod_director=j.cod_jefe
	group by j.nombre
	having Count(*)>=2 
    order by count(*);

#26. Hallar los departamentos que no tienen empleados
select d.id_depto, count(*)
	from departamentos d,empleados e
	where d.id_depto=e.id_depto
	GROUP BY d.id_depto
having count(*)=0;

#Consulta con Subconsulta
#27. Mostrar la lista de los empleados cuyo salario es mayor o igual que el promedio de la empresa.
#Ordenarlo por departamento.
select id_emp,id_depto,nombre,sal_emp as salario
	from empleados
    where sal_emp>=(select avg(sal_emp) from empleados)
    order by id_depto;


