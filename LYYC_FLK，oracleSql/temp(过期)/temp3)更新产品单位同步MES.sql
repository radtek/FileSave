
create or replace function F_A1
return varchar2
is
  V_A VARCHAR2(100);
  V_B VARCHAR2(100);
begin

  ----连BI_PRODUCTU也要更改
  V_A := 'XBYHSCHSYYX';
  V_B := '03140100000000248XBYH';
  UPDATE BI_MATCH_PALLET_DETAILU SET PRODUCT_CODEU=V_A WHERE PRODUCT_CODEU=V_B;
  UPDATE WM_STORAGEU SET PRODUCT_CODEU= V_A WHERE PRODUCT_CODEU=V_B;
  UPDATE BI_PRODUCT_UNITU SET PRODUCT_CODEU= V_A WHERE PRODUCT_CODEU=V_B;
  UPDATE BI_PRODUCTU SET PRODUCT_CODEU= V_A WHERE PRODUCT_CODEU=V_B;
  
  ----连BI_PRODUCTU也要更改
  V_A := '03140100100000198';
  V_B := '03140100000000248TXG';
  UPDATE BI_MATCH_PALLET_DETAILU SET PRODUCT_CODEU=V_A WHERE PRODUCT_CODEU=V_B;
  UPDATE WM_STORAGEU SET PRODUCT_CODEU= V_A WHERE PRODUCT_CODEU=V_B;
  UPDATE BI_PRODUCT_UNITU SET PRODUCT_CODEU= V_A WHERE PRODUCT_CODEU=V_B;
  UPDATE BI_PRODUCTU SET PRODUCT_CODEU= V_A WHERE PRODUCT_CODEU=V_B;
  ----连BI_PRODUCTU也要更改
  V_A := 'HQQMGHSYX';
  V_B := '03140100000000248MG';
  UPDATE BI_MATCH_PALLET_DETAILU SET PRODUCT_CODEU=V_A WHERE PRODUCT_CODEU=V_B;
  UPDATE WM_STORAGEU SET PRODUCT_CODEU= V_A WHERE PRODUCT_CODEU=V_B;
  UPDATE BI_PRODUCT_UNITU SET PRODUCT_CODEU= V_A WHERE PRODUCT_CODEU=V_B;
  UPDATE BI_PRODUCTU SET PRODUCT_CODEU= V_A WHERE PRODUCT_CODEU=V_B;
  
  return '^_^';
  Exception when others then
    raise;
end;
/
alter table BI_PRODUCT_UNITU disable constraint FK_BI_PRODUCT_UNITU_1434066075;
/
set serveroutput on;
declare
  v_temp varchar2(50);
begin
  v_temp := F_A1();
  dbms_output.put_line(v_temp);
  --rollback;
  commit;
  Exception when others then
    rollback;
    raise;
end;
/
drop function F_A1;
alter table BI_PRODUCT_UNITU ENABLE constraint FK_BI_PRODUCT_UNITU_1434066075;
/


