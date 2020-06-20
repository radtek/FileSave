
/*修改大字段列
ALTER TABLE SM_ORIGINAL_ORDER_DETAILU MODIFY(REMARKU NVARCHAR2(50));
ALTER TABLE SM_ORIGINAL_ORDER_DETAILU DROP COLUMN REMARKU;
ALTER TABLE SM_ORIGINAL_ORDER_DETAILU ADD REMARKU NVARCHAR2(500);
ALTER TABLE SM_ORIGINAL_ORDER_DETAILU ADD REMARKU NCLOB;
--*/

/*
CREATE OR REPLACE PROCEDURE p_location_SET_BAD_EXCEPT 
(V_LOCATION_CODEU01 VARCHAR2)
IS
  CURSOR emp_cursor(v_location_code varchar2) IS    
    SELECT LOCATION_CODEU,LOCATION_STATUSU FROM WM_LOCATIONU WHERE LOCATION_CODEU=v_location_code;
BEGIN
----除某些货位外，其他都改成不可用
  UPDATE WM_LOCATIONU SET LOCATION_STATUSU='0' WHERE LOCATION_CODEU NOT IN (V_LOCATION_CODEU01);
  for emp_data in emp_cursor(V_LOCATION_CODEU01)
  LOOP
    dbms_output.put_line(emp_data.LOCATION_CODEU || '    ' || emp_data.LOCATION_STATUSU);
  END LOOP;
  COMMIT;
END;
/
--*/
--/*
CREATE OR REPLACE PROCEDURE p_location_SET_NORMAL_OTHERSBAD 
(V_LOCATION_CODEU01 VARCHAR2, V_LOCATION_CODEU02 VARCHAR2)
AS
BEGIN
----除设定的货位外，其他货位都改成不可用
  UPDATE WM_LOCATIONU SET LOCATION_STATUSU='0' WHERE LOCATION_CODEU NOT IN (V_LOCATION_CODEU01, V_LOCATION_CODEU02);
  UPDATE WM_LOCATIONU SET LOCATION_STATUSU='1' WHERE LOCATION_CODEU IN (V_LOCATION_CODEU01, V_LOCATION_CODEU02);
END;
/
--/*
SET SERVEROUTPUT ON;
begin
  p_location_SET_NORMAL_OTHERSBAD('01-09-01', '03-28-01');
  commit;
end;
/
--*/
--SELECT * FROM WM_LOCATIONU;

