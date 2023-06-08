declare
  saludo varchar2(12) :='hola a todos';
begin
  dbms_output.put_line(UPPER(saludo));--convierte a mayusculas
  dbms_output.put_line(LOWER(saludo));--convierte a minusculas
  dbms_output.put_line(INITCAP(saludo));--convierte mayusculas primeras letras
  
  dbms_output.put_line(SUBSTR(saludo, 2));/*busca posicion caracteres a 
                                           partir de lugar indicado*/
  
  dbms_output.put_line(INSTR(saludo, 't'));/*indica la posicion de un caracter
                                           indicado en segundo parametro*/

end;

declare
  saludo2 varchar2(30) :='####Hola a todos####';
begin
  dbms_output.put_line(RTRIM(saludo2, '#'));--corta caracteres del lado derecho
  dbms_output.put_line(LTRIM(saludo2, '#'));--corta caracteres del lado izquierdo
  dbms_output.put_line(TRIM('#' from saludo2));--corta caracteres de ambos lados
end;
--//Eliminar espacios
declare
  saludo2 varchar2(100) :='       ####Hola a todos####           ';
begin
  dbms_output.put_line(RTRIM(saludo2));--corta caracteres del lado derecho
  dbms_output.put_line(LTRIM(saludo2));--corta caracteres del lado izquierdo
  dbms_output.put_line(TRIM(saludo2));--corta caracteres de ambos lados
end;