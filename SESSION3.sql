/*Escribe un bloque de codigo en PLSQ que utilice un bucle 
para calcular la suma de los numeros enteros del 1 al 100 e imprima el resultado.*/
DECLARE
SUMA NUMBER := 1;
AUMENTO NUMBER := 1;
BEGIN
    wHILE AUMENTO <= 100 LOOP
--    AUMENTO = 1 <= 100 SE CUMPLE => TRUE
        DBMS_OUTPUT.PUT_LINE( 'La respuesta es' || SUMA);
                            -- SUMA IMPRIME 1
        AUMENTO := AUMENTO + 1;
        -- AUMENTO = 1 + 1 = 2
        SUMA := AUMENTO + SUMA ;
        --SUMA = 2 + 1 = 3
    END LOOP;
    DBMS_OUTPUT.PUT_LINE( 'SUMA TOTA: ' || SUMA);
END;

/*
  FOR i IN 1..100 LOOP
    total := total + i; -- Sumar el numero actual al total
  END LOOP;
  DBMS_OUTPUT.PUT_LINE('La suma de los nu   meros del 1 al 100 es: ' || total);
*/

/*Ejercicio: Escribe un bloque de código en PLSQ que valide una variable inicializada 
tipo numero entero y determine si es positivo, negativo o cero. 
Imprime un mensaje indicando el resultado.*/

DECLARE
NUMERO NUMBER := -79879;
BEGIN
    IF NUMERO <0 THEN 
        DBMS_OUTPUT.put_line('El numero es negativo');
    ELSIF NUMERO >0 THEN 
        DBMS_OUTPUT.put_line('El numero es positivo');
    ELSIF NUMERO =0 THEN 
        DBMS_OUTPUT.put_line('El numero es 0');
    ELSE 
        DBMS_OUTPUT.put_line('Ingrese un valor correcto');
    END IF;
END;

/*Crea una tabla llamada "Empleados" que contenga las siguientes columnas: "ID", "Nombre" y "Salario". 
Luego, escribe una consulta SQL que muestre el nombre y el salario de los empleados cuyo salario sea mayor a $5000.*/
CREATE TABLE EMPLEADOS
(
    ID NUMBER PRIMARY KEY NOT NULL,
    NOMBRE VARCHAR2(250),
    SALARIO NUMBER
);

SELECT NOMBRE || ' ' || SALARIO 
FROM EMPLEADOS;
/*Ejercicio: Inserta un nuevo empleado en una tabla llamada "Empleados" con las siguientes columnas: "ID", "Nombre" y "Salario". 
El nuevo empleado tiene un ID de 1, nombre "John Doe" y salario de $5000.*/
INSERT INTO EMPLEADOS (ID, NOMBRE, SALARIO) 
                VALUES(1, 'Jhon Doe', 5000);

/*Ejercicio: Actualiza el salario de un empleado en la tabla "Empleados". Supongamos que deseas actualizar el salario del 
empleado con ID 1 y aumentarlo en un 10%, es decir, multiplicarlo por 1.1.*/
UPDATE empleados 
    SET SALARIO = 5000*1.1
    WHERE NOMBRE = 'Jhon Doe'
    AND ID = 1;


SELECT NOMBRE || ' ' || SALARIO 
FROM EMPLEADOS;

COMMIT;
/*Ejercicio: Elimina un empleado de la tabla "Empleados". 
Supongamos que deseas eliminar el empleado con ID 1.*/
DELETE FROM empleados
 WHERE ID = 1;
 
 SELECT NOMBRE || ' ' || SALARIO 
FROM EMPLEADOS;

COMMIT;