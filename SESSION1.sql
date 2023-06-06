DECLARE
  -- Declaraciones de variables y tipos de datos
  /*
Tipos de datos numéricos:
    NUMBER: Para almacenar números enteros o de coma flotante.
    INTEGER: Para almacenar números enteros.
    BINARY_INTEGER: Similar a INTEGER pero optimizado para cálculos de bucle.
    PLS_INTEGER: Similar a BINARY_INTEGER pero con características adicionales de optimización.

Tipos de datos de caracteres:
    CHAR(LONGITUD): Para almacenar cadenas de caracteres de longitud fija.
    VARCHAR2(LONGITUD): Para almacenar cadenas de caracteres de longitud variable.
    CLOB: Para almacenar cadenas de caracteres de longitud variable largas (hasta 4 GB).
    NCHAR(LONGITUD): Para almacenar cadenas de caracteres Unicode de longitud fija.
    NVARCHAR2(LONGITUD): Para almacenar cadenas de caracteres Unicode de longitud variable.
    NCLOB: Para almacenar cadenas de caracteres Unicode de longitud variable largas.

Tipos de datos de fecha y hora:
    FORMATO FECHA := 'DD/MM/YYYY';
    FORMATO HORA := 'HH24:MI:SS';
    DATE: Para almacenar fechas y horas.
    TIMESTAMP: Para almacenar fechas y horas con mayor precisión.
    INTERVAL: Para almacenar intervalos de tiempo.

Tipos de datos booleanos:
    BOOLEAN: Para almacenar valores booleanos (TRUE o FALSE).
    
Tipos de datos compuestos:
    RECORD: Para almacenar un conjunto de valores relacionados.
    TABLE: Para almacenar conjuntos de valores en una estructura de tabla.
  */

  NOMBRE VARCHAR2(10) := 'RODOLFO';
  APELLIDO VARCHAR2(10) := 'BOCHE';
  EDAD NUMBER := 21;
  FECHA DATE := '05/06/2023';
  
  RECORRIDO NUMBER := 0;

BEGIN
  -- Sentencias PL/SQL
    FECHA := TO_DATE(SYSDATE,'DD/MM/YYYY HH24:MI:SS');

    --DBMS_OUTPUT.put_line(NOMBRE || ' ' || EDAD);
    --DBMS_OUTPUT.put_line(EDAD);
    --DBMS_OUTPUT.put_line(FECHA);
    
    APELLIDO := 'G';
    /*IF APELLIDO = 'BOCHE' THEN
        DBMS_OUTPUT.put_line('EDGAR RODOLFO BOCHE BATEN');
    ELSIF APELLIDO = 'XILOJ' THEN
        DBMS_OUTPUT.put_line('RODOLFO RAFAEL XILOJ AROCHE');
    ELSIF APELLIDO = 'GOMEZ' THEN
        DBMS_OUTPUT.put_line('ANDA EN ESQUIPULAS'); 
    ELSE
        DBMS_OUTPUT.put_line('NO SE ENCONTROL ALUMNO');
    END IF;*/
    
    /*CASE APELLIDO
      WHEN 'BOCHE' THEN
          DBMS_OUTPUT.put_line('EDGAR RODOLFO BOCHE BATEN');
      WHEN 'XILOJ' THEN
          DBMS_OUTPUT.put_line('RODOLFO RAFAEL XILOJ AROCHE');
      WHEN 'GOMEZ' THEN
          DBMS_OUTPUT.put_line('ANDA EN ESQUIPULAS'); 
      ELSE
          DBMS_OUTPUT.put_line('NO SE ENCONTROL ALUMNO');
     END CASE;*/
  
  
  /*FOR i IN 2..115 LOOP
    -- Código a ejecutar en cada iteración
    DBMS_OUTPUT.PUT_LINE(i);
  END LOOP;*/
  
  WHILE RECORRIDO <= 10 LOOP
      -- Código a ejecutar en cada iteración
      DBMS_OUTPUT.PUT_LINE('Iteración: ' || RECORRIDO);
      RECORRIDO := RECORRIDO + 1;
   END LOOP;


--EXCEPTION
  -- Manejo de excepciones (opcional)
END;
