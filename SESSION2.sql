CREATE TABLE ESTUDIANTE
(
    ID NUMBER PRIMARY KEY NOT NULL,
    NOMBRE VARCHAR2(250),
    APELLIDO VARCHAR2(250),
    EDAD NUMBER,
    GRADO VARCHAR2(250),
    NACIMIENTO DATE,
    SEXO VARCHAR(2),
    RESULTADO VARCHAR(2)
);

INSERT INTO ESTUDIANTE(ID, NOMBRE, APELLIDO, EDAD, GRADO, NACIMIENTO, SEXO)
                VALUES(1, 'RODOLFO', 'XILOJ', 22, '3RO', '06/06/2001', 'M');
INSERT INTO ESTUDIANTE(ID, NOMBRE, APELLIDO, EDAD, GRADO, NACIMIENTO, SEXO)
                VALUES(2, 'MARIA', 'CUAL', 15, '3RO', '06/06/2001', 'F');
INSERT INTO ESTUDIANTE(ID, NOMBRE, APELLIDO, EDAD, GRADO, NACIMIENTO, SEXO)
                VALUES(3, 'FERNANDA', 'XILOJ', 11, '3RO', '06/06/2001', 'F');
INSERT INTO ESTUDIANTE(ID, NOMBRE, APELLIDO, EDAD, GRADO, NACIMIENTO, SEXO)
                VALUES(4, 'RAFAEL', 'AROCHE', 20, '3RO', '06/06/2001', 'M');

SELECT NOMBRE, GRADO 
  FROM ESTUDIANTE;

SELECT NOMBRE || ' ' || GRADO AS ESTUDIANTE 
  FROM ESTUDIANTE;


UPDATE ESTUDIANTE
   SET RESULTADO = 'F'
 WHERE NOMBRE = 'RODOLFO'
   AND GRADO = '3RO'
   AND ID = 3;

DELETE FROM ESTUDIANTE
 WHERE ID = 3   ;

 ALTER TABLE ESTUDIANTE ADD(FECHA_ACTUALIZACION DATE);