--RETORNA UN VALOR. SINO RETORNA ERROR
 CREATE OR REPLACE FUNCTION findMin(x IN NUMBER, y IN NUMBER)
  RETURN NUMBER IS 
  Z NUMBER :=0;--DECLARACI�N DE VARIALBES
BEGIN
    IF x>y THEN
    Z:=y;
  ELSE
    Z:=X;
  END IF;
  RETURN Z;
END;
--primero se crea �sto
--Luego ejecuta el begin:

BEGIN
--tambi�n se puede llamar funciones con la tabla DUAL
    SELECT findMin(40,10) as RESULTADO FROM DUAL;
    
   DBMS_OUTPUT.PUT_LINE('MIN 20-40:' || findMin(20,40));
END;