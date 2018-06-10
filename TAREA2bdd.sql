CREATE TABLE estudiante(
id Serial PRIMARY KEY,
Nombre1 text NOT NULL,
Nombre2 text NOT NULL,
Apellido1 text NOT NULL,
Apellido2 text NOT NULL,
Cedula varchar (15),
fecha_Nacimiento DATE,
nota_BDD decimal,
nota_POO decimal,
genero VARCHAR (20)
);

---TABLA CREADA---
SELECT * FROM estudiante;

---INGRESO DE DATOS---

INSERT INTO estudiante(Nombre1,Nombre2,Apellido1,Apellido2,Cedula, fecha_Nacimiento, nota_BDD, nota_POO, Genero) VALUES('JUAN','MARCO', 'ORTIZ', 'ZAPATA', '1724229008', '1998/11/25', 10, 8, 'Masculino');


INSERT INTO estudiante(Nombre1,Nombre2,Apellido1,Apellido2,Cedula, fecha_Nacimiento, nota_BDD, nota_POO, Genero) VALUES('MARCO','JUAN','ALVEZ','RAMOS', '1724229007', '1994/10/23', 9, 7, 'Masculino');


INSERT INTO estudiante(Nombre1,Nombre2,Apellido1,Apellido2,Cedula, fecha_Nacimiento, nota_BDD, nota_POO, Genero) VALUES('OMAR','IVAN','AGUIAR','ALVES', '1724229001', '1996/11/26',8.5, 9, 'Masculino');


INSERT INTO estudiante(Nombre1,Nombre2,Apellido1,Apellido2,Cedula, fecha_Nacimiento, nota_BDD, nota_POO, Genero) VALUES('MANUELA','LUCIA', 'BOLIVAR', 'BOLIVAR', '1724229002', '1990/11/21',8,10, 'Femenino');


INSERT INTO estudiante(Nombre1,Nombre2,Apellido1,Apellido2,Cedula, fecha_Nacimiento, nota_BDD, nota_POO, Genero) VALUES('LIZ', 'MARIA', 'BARCOS', 'CHICAIZA', '1724229003', '1997/11/28',7,8, 'Femenino');


INSERT INTO estudiante(Nombre1,Nombre2,Apellido1,Apellido2,Cedula, fecha_Nacimiento, nota_BDD, nota_POO, Genero) VALUES('TATIANA', 'INEZ', 'BOLIVAR', 'CACERES', '1724229004', '1999/11/29',8, 5.6, 'Femenino');


INSERT INTO estudiante(Nombre1,Nombre2,Apellido1,Apellido2,Cedula, fecha_Nacimiento, nota_BDD, nota_POO, Genero) VALUES('ELIANA', 'MARIA', 'OTUNA', 'BOLIVAR', '1724229005', '1993/11/23',9,9.9, 'Femenino');


INSERT INTO estudiante(Nombre1,Nombre2,Apellido1,Apellido2,Cedula, fecha_Nacimiento, nota_BDD, nota_POO, Genero) VALUES('RANDY','MARCO', 'ALVES', 'ALCIVAR', '1724229006', '1992/11/24',8, 6.6, 'Masculino');


INSERT INTO estudiante(Nombre1,Nombre2,Apellido1,Apellido2,Cedula, fecha_Nacimiento, nota_BDD, nota_POO, Genero) VALUES('DAVID', 'JHONN', 'FLORES', 'CARPIO', '1724229007', '1991/11/28',9,8.5, 'Masculino');


INSERT INTO estudiante(Nombre1,Nombre2,Apellido1,Apellido2,Cedula, fecha_Nacimiento, nota_BDD, nota_POO, Genero) VALUES('JOSE','JUAN', 'TITUAÑA', 'ANDRADE', '1724229011', '1993/11/27',7,6.6, 'Masculino');


INSERT INTO estudiante(Nombre1,Nombre2,Apellido1,Apellido2,Cedula, fecha_Nacimiento, nota_BDD, nota_POO, Genero) VALUES('IMELDA', 'ALEJANDRINA', 'CACEREZ', 'BOLIVAR', '1724229091', '1994/11/28', 8,5.6, 'Femenino');


INSERT INTO estudiante(Nombre1,Nombre2,Apellido1,Apellido2,Cedula, fecha_Nacimiento, nota_BDD, nota_POO, Genero) VALUES('GABRIELA', 'MARIA', 'MEZA', 'CACERES', '1724229078', '1995/11/21',9,6.3, 'Femenino');


INSERT INTO estudiante(Nombre1,Nombre2,Apellido1,Apellido2,Cedula, fecha_Nacimiento, nota_BDD, nota_POO, Genero) VALUES('MARIA', 'ANTONIETA', 'MALDONADO', 'ALCIVAR' ,'1724229032', '1996/11/22', 8, 10, 'Femenino');


INSERT INTO estudiante(Nombre1,Nombre2,Apellido1,Apellido2,Cedula, fecha_Nacimiento, nota_BDD, nota_POO, Genero) VALUES('MARCO', 'ANDRES', 'AGUIAR', 'MANZANO', '1724229045', '1997/11/24', 10, 6.8, 'Masculino');


---SELECCIONAR COLUMNAS QUE SE QUIERE---

SELECT fecha_Nacimiento, nota_BDD, nota_POO, Genero FROM estudiante


---NOTA MAXIMA bdd---

SELECT * FROM estudiante
WHERE nota_BDD = (SELECT MAX(nota_BDD) FROM estudiante)
ORDER BY nombre1


---NOTA MINIMA BDD---

SELECT * FROM estudiante
WHERE nota_BDD = (SELECT MIN(nota_BDD) FROM estudiante)
ORDER BY nombre1

--- NOTA MAXIMA PROGRAMACION--- 

SELECT * FROM estudiante
WHERE nota_BDD = (SELECT MAX(nota_POO) FROM estudiante)
ORDER BY nombre1

---NOTA MINIMA PROGRAMACION---

SELECT * FROM estudiante
WHERE nota_BDD = (SELECT MIN(nota_POO) FROM estudiante)
ORDER BY nombre1

---DE MAYOR A MENOR---

SELECT * FROM estudiante
ORDER BY nota_BDD DESC ;

---DE MENOR A MAYOR---

SELECT * FROM estudiante
ORDER BY nota_BDD ;


---ORDENAR POR GENERO---

SELECT * FROM estudiante where
genero =  'Femenino' or genero = 'Masculino'  ORDER BY genero ASC


---CUANTOS HAY MASCULINOS Y FEMENINOS---


SELECT genero, count(*) AS estudiante
FROM estudiante
GROUP BY genero


--- LOS MEJORES 5 ESTUDIANTES---

SELECT * FROM
estudiante ORDER BY nota_BDD DESC LIMIT 5 