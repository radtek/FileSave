

--SELECT * FROM SYS.ALL_TAB_COLUMNS WHERE COLUMN_NAME LIKE 'UNIT_CODEU%' AND "OWNER" = 'C##FUSION';

create or replace function F_A1
return varchar2
is
  V_A VARCHAR2(100);
  V_B VARCHAR2(100);
begin
  V_A := '919';
  V_B := '918';
  UPDATE BI_PRODUCT_UNITU SET UNIT_CODEU=V_A WHERE UNIT_CODEU=V_B;
  UPDATE BI_UNITU SET UNIT_CODEU=V_A WHERE UNIT_CODEU=V_B;
  UPDATE BI_MATCH_PALLET_DETAILU SET WAREHOUSE_UNIT_CODEU=V_A WHERE WAREHOUSE_UNIT_CODEU=V_B;
  UPDATE BI_MATCH_PALLET_DETAILU SET WORKSHOP_UNIT_CODEU=V_A WHERE WORKSHOP_UNIT_CODEU=V_B;
  V_A := '948';
  V_B := '103';
  UPDATE BI_PRODUCT_UNITU SET UNIT_CODEU=V_A WHERE UNIT_CODEU=V_B;
  UPDATE BI_UNITU SET UNIT_CODEU=V_A WHERE UNIT_CODEU=V_B;
  UPDATE BI_MATCH_PALLET_DETAILU SET WAREHOUSE_UNIT_CODEU=V_A WHERE WAREHOUSE_UNIT_CODEU=V_B;
  UPDATE BI_MATCH_PALLET_DETAILU SET WORKSHOP_UNIT_CODEU=V_A WHERE WORKSHOP_UNIT_CODEU=V_B;
  V_A := '947';
  V_B := '102';
  UPDATE BI_PRODUCT_UNITU SET UNIT_CODEU=V_A WHERE UNIT_CODEU=V_B;
  UPDATE BI_UNITU SET UNIT_CODEU=V_A WHERE UNIT_CODEU=V_B;
  UPDATE BI_MATCH_PALLET_DETAILU SET WAREHOUSE_UNIT_CODEU=V_A WHERE WAREHOUSE_UNIT_CODEU=V_B;
  UPDATE BI_MATCH_PALLET_DETAILU SET WORKSHOP_UNIT_CODEU=V_A WHERE WORKSHOP_UNIT_CODEU=V_B;
  return '^_^';
  Exception when others then
    raise;
end;
/
set serveroutput on;
declare
  v_temp varchar2(50);
begin
  v_temp := F_A1();
  dbms_output.put_line(v_temp);
  commit;
  Exception when others then
    rollback;
    raise;
end;
/
drop function F_A1;