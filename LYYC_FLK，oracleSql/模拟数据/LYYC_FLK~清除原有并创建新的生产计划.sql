
--delete from WM_PRODUCTION_PLANU;
--delete from WM_PRODUCTION_PLAN_DETAILU;

create or replace function F_A1
return varchar2
is
    V_PLAN_NO VARCHAR2(500);
begin
  V_PLAN_NO := 'P'||to_char(SYSDATE,  'yymmddhh24miss');
  insert into "C##FUSION"."WM_PRODUCTION_PLANU"("PRODUCTION_PLAN_NOU", "ORIGIN_PLAN_NOU", "PLAN_BEGIN_TIMEU", "PLAN_END_TIMEU", "MAKERU", "MAKE_TIMEU", "AUDITORU", "BILL_NOU", "AUDIT_TIMEU", "PRODUCTION_PLAN_STATUSU", "PRODUCTION_PLAN_ORIGINU", "CREATE_TIMEU", "UPDATE_TIMEU", "ROW_VERSIONU")
  values ( V_PLAN_NO , null,  SYSDATE ,  SYSDATE+1 ,  'admin' ,  SYSDATE ,  '' , null, null,  '0' ,  '0' ,  SYSDATE ,  SYSDATE ,  SYS_GUID());


  --/*
  insert into "C##FUSION"."WM_PRODUCTION_PLAN_DETAILU"("IDU", "PRODUCTION_PLAN_NOU", "SERIAL_NUMBERU", "TEAM_CODEU", "TEAM_NAMEU", "SHIFT_CODEU", "SHIFT_NAMEU", "MACHINE_CODEU", "MACHINE_NAMEU", "BRAND_CODEU", "BRAND_NAMEU", "ORIGIN_WORK_NOU", "PRODUCTION_PLAN_DETAIL_STATUSU", "PRODUCTION_BEGIN_TIMEU", "PRODUCTION_END_TIMEU", "CREATE_TIMEU", "UPDATE_TIMEU", "ROW_VERSIONU")
  values ( SYS_GUID(),  V_PLAN_NO ,  '1' ,  '1' ,  '�װ�' , null, null,  'J106' ,  '6#���ӻ�' ,  '69010281617180001' ,  '��������â����' , null,  '0' , null, null,  SYSDATE ,  SYSDATE ,  SYS_GUID());
  
  insert into "C##FUSION"."WM_PRODUCTION_PLAN_DETAILU"("IDU", "PRODUCTION_PLAN_NOU", "SERIAL_NUMBERU", "TEAM_CODEU", "TEAM_NAMEU", "SHIFT_CODEU", "SHIFT_NAMEU", "MACHINE_CODEU", "MACHINE_NAMEU", "BRAND_CODEU", "BRAND_NAMEU", "ORIGIN_WORK_NOU", "PRODUCTION_PLAN_DETAIL_STATUSU", "PRODUCTION_BEGIN_TIMEU", "PRODUCTION_END_TIMEU", "CREATE_TIMEU", "UPDATE_TIMEU", "ROW_VERSIONU")
  values ( SYS_GUID(),  V_PLAN_NO ,  '1' ,  '1' ,  '�װ�' , null, null,  'B206' ,  '6#��װ��' ,  '69010281617180001' ,  '��������â����' , null,  '0' , null, null,  SYSDATE ,  SYSDATE ,  SYS_GUID());
  
  insert into "C##FUSION"."WM_PRODUCTION_PLAN_DETAILU"("IDU", "PRODUCTION_PLAN_NOU", "SERIAL_NUMBERU", "TEAM_CODEU", "TEAM_NAMEU", "SHIFT_CODEU", "SHIFT_NAMEU", "MACHINE_CODEU", "MACHINE_NAMEU", "BRAND_CODEU", "BRAND_NAMEU", "ORIGIN_WORK_NOU", "PRODUCTION_PLAN_DETAIL_STATUSU", "PRODUCTION_BEGIN_TIMEU", "PRODUCTION_END_TIMEU", "CREATE_TIMEU", "UPDATE_TIMEU", "ROW_VERSIONU")
  values ( SYS_GUID(),  V_PLAN_NO ,  '1' ,  '1' ,  '�װ�' , null, null,  'J105' ,  '5#���ӻ�' ,  '69010281617180001' ,  '��������â����' , null,  '0' , null, null,  SYSDATE ,  SYSDATE ,  SYS_GUID());
  
  insert into "C##FUSION"."WM_PRODUCTION_PLAN_DETAILU"("IDU", "PRODUCTION_PLAN_NOU", "SERIAL_NUMBERU", "TEAM_CODEU", "TEAM_NAMEU", "SHIFT_CODEU", "SHIFT_NAMEU", "MACHINE_CODEU", "MACHINE_NAMEU", "BRAND_CODEU", "BRAND_NAMEU", "ORIGIN_WORK_NOU", "PRODUCTION_PLAN_DETAIL_STATUSU", "PRODUCTION_BEGIN_TIMEU", "PRODUCTION_END_TIMEU", "CREATE_TIMEU", "UPDATE_TIMEU", "ROW_VERSIONU")
  values ( SYS_GUID(),  V_PLAN_NO ,  '1' ,  '1' ,  '�װ�' , null, null,  'B205' ,  '5#��װ��' ,  '69010281617180001' ,  '��������â����' , null,  '0' , null, null,  SYSDATE ,  SYSDATE ,  SYS_GUID());
  insert into "C##FUSION"."WM_PRODUCTION_PLAN_DETAILU"("IDU", "PRODUCTION_PLAN_NOU", "SERIAL_NUMBERU", "TEAM_CODEU", "TEAM_NAMEU", "SHIFT_CODEU", "SHIFT_NAMEU", "MACHINE_CODEU", "MACHINE_NAMEU", "BRAND_CODEU", "BRAND_NAMEU", "ORIGIN_WORK_NOU", "PRODUCTION_PLAN_DETAIL_STATUSU", "PRODUCTION_BEGIN_TIMEU", "PRODUCTION_END_TIMEU", "CREATE_TIMEU", "UPDATE_TIMEU", "ROW_VERSIONU")
  values ( SYS_GUID(),  V_PLAN_NO ,  '1' ,  '1' ,  '�װ�' , null, null,  'Z304' ,  '4#װ�����' ,  '69010281617180001' ,  '��������â����' , null,  '0' , null, null,  SYSDATE ,  SYSDATE ,  SYS_GUID());

  insert into "C##FUSION"."WM_PRODUCTION_PLAN_DETAILU"("IDU", "PRODUCTION_PLAN_NOU", "SERIAL_NUMBERU", "TEAM_CODEU", "TEAM_NAMEU", "SHIFT_CODEU", "SHIFT_NAMEU", "MACHINE_CODEU", "MACHINE_NAMEU", "BRAND_CODEU", "BRAND_NAMEU", "ORIGIN_WORK_NOU", "PRODUCTION_PLAN_DETAIL_STATUSU", "PRODUCTION_BEGIN_TIMEU", "PRODUCTION_END_TIMEU", "CREATE_TIMEU", "UPDATE_TIMEU", "ROW_VERSIONU")
  values ( SYS_GUID(),  V_PLAN_NO ,  '1' ,  '1' ,  '�װ�' , null, null,  'J104' ,  '4#���ӻ�' ,  '69010281617180001' ,  '��������â����' , null,  '0' , null, null,  SYSDATE ,  SYSDATE ,  SYS_GUID());
  
  insert into "C##FUSION"."WM_PRODUCTION_PLAN_DETAILU"("IDU", "PRODUCTION_PLAN_NOU", "SERIAL_NUMBERU", "TEAM_CODEU", "TEAM_NAMEU", "SHIFT_CODEU", "SHIFT_NAMEU", "MACHINE_CODEU", "MACHINE_NAMEU", "BRAND_CODEU", "BRAND_NAMEU", "ORIGIN_WORK_NOU", "PRODUCTION_PLAN_DETAIL_STATUSU", "PRODUCTION_BEGIN_TIMEU", "PRODUCTION_END_TIMEU", "CREATE_TIMEU", "UPDATE_TIMEU", "ROW_VERSIONU")
  values ( SYS_GUID(),  V_PLAN_NO ,  '1' ,  '1' ,  '�װ�' , null, null,  'B204' ,  '4#��װ��' ,  '69010281617180001' ,  '��������â����' , null,  '0' , null, null,  SYSDATE ,  SYSDATE ,  SYS_GUID());
  
  insert into "C##FUSION"."WM_PRODUCTION_PLAN_DETAILU"("IDU", "PRODUCTION_PLAN_NOU", "SERIAL_NUMBERU", "TEAM_CODEU", "TEAM_NAMEU", "SHIFT_CODEU", "SHIFT_NAMEU", "MACHINE_CODEU", "MACHINE_NAMEU", "BRAND_CODEU", "BRAND_NAMEU", "ORIGIN_WORK_NOU", "PRODUCTION_PLAN_DETAIL_STATUSU", "PRODUCTION_BEGIN_TIMEU", "PRODUCTION_END_TIMEU", "CREATE_TIMEU", "UPDATE_TIMEU", "ROW_VERSIONU")
  values ( SYS_GUID(),  V_PLAN_NO ,  '1' ,  '1' ,  '�װ�' , null, null,  'J103' ,  '3#���ӻ�' ,  '69010281617180001' ,  '��������â����' , null,  '0' , null, null,  SYSDATE ,  SYSDATE ,  SYS_GUID());
  
  insert into "C##FUSION"."WM_PRODUCTION_PLAN_DETAILU"("IDU", "PRODUCTION_PLAN_NOU", "SERIAL_NUMBERU", "TEAM_CODEU", "TEAM_NAMEU", "SHIFT_CODEU", "SHIFT_NAMEU", "MACHINE_CODEU", "MACHINE_NAMEU", "BRAND_CODEU", "BRAND_NAMEU", "ORIGIN_WORK_NOU", "PRODUCTION_PLAN_DETAIL_STATUSU", "PRODUCTION_BEGIN_TIMEU", "PRODUCTION_END_TIMEU", "CREATE_TIMEU", "UPDATE_TIMEU", "ROW_VERSIONU")
  values ( SYS_GUID(),  V_PLAN_NO ,  '1' ,  '1' ,  '�װ�' , null, null,  'B203' ,  '3#��װ��' ,  '69010281617180001' ,  '��������â����' , null,  '0' , null, null,  SYSDATE ,  SYSDATE ,  SYS_GUID());

  insert into "C##FUSION"."WM_PRODUCTION_PLAN_DETAILU"("IDU", "PRODUCTION_PLAN_NOU", "SERIAL_NUMBERU", "TEAM_CODEU", "TEAM_NAMEU", "SHIFT_CODEU", "SHIFT_NAMEU", "MACHINE_CODEU", "MACHINE_NAMEU", "BRAND_CODEU", "BRAND_NAMEU", "ORIGIN_WORK_NOU", "PRODUCTION_PLAN_DETAIL_STATUSU", "PRODUCTION_BEGIN_TIMEU", "PRODUCTION_END_TIMEU", "CREATE_TIMEU", "UPDATE_TIMEU", "ROW_VERSIONU")
  values ( SYS_GUID(),  V_PLAN_NO ,  '1' ,  '1' ,  '�װ�' , null, null,  'J102' ,  '2#���ӻ�' ,  '69010281617180001' ,  '��������â����' , null,  '0' , null, null,  SYSDATE ,  SYSDATE ,  SYS_GUID());
  
  insert into "C##FUSION"."WM_PRODUCTION_PLAN_DETAILU"("IDU", "PRODUCTION_PLAN_NOU", "SERIAL_NUMBERU", "TEAM_CODEU", "TEAM_NAMEU", "SHIFT_CODEU", "SHIFT_NAMEU", "MACHINE_CODEU", "MACHINE_NAMEU", "BRAND_CODEU", "BRAND_NAMEU", "ORIGIN_WORK_NOU", "PRODUCTION_PLAN_DETAIL_STATUSU", "PRODUCTION_BEGIN_TIMEU", "PRODUCTION_END_TIMEU", "CREATE_TIMEU", "UPDATE_TIMEU", "ROW_VERSIONU")
  values ( SYS_GUID(),  V_PLAN_NO ,  '1' ,  '1' ,  '�װ�' , null, null,  'B202' ,  '2#��װ��' ,  '69010281617180001' ,  '��������â����' , null,  '0' , null, null,  SYSDATE ,  SYSDATE ,  SYS_GUID());
  
  insert into "C##FUSION"."WM_PRODUCTION_PLAN_DETAILU"("IDU", "PRODUCTION_PLAN_NOU", "SERIAL_NUMBERU", "TEAM_CODEU", "TEAM_NAMEU", "SHIFT_CODEU", "SHIFT_NAMEU", "MACHINE_CODEU", "MACHINE_NAMEU", "BRAND_CODEU", "BRAND_NAMEU", "ORIGIN_WORK_NOU", "PRODUCTION_PLAN_DETAIL_STATUSU", "PRODUCTION_BEGIN_TIMEU", "PRODUCTION_END_TIMEU", "CREATE_TIMEU", "UPDATE_TIMEU", "ROW_VERSIONU")
  values ( SYS_GUID(),  V_PLAN_NO ,  '1' ,  '1' ,  '�װ�' , null, null,  'J101' ,  '1#���ӻ�' ,  '69010281617180001' ,  '��������â����' , null,  '0' , null, null,  SYSDATE ,  SYSDATE ,  SYS_GUID());
  --*/
  
  insert into "C##FUSION"."WM_PRODUCTION_PLAN_DETAILU"("IDU", "PRODUCTION_PLAN_NOU", "SERIAL_NUMBERU", "TEAM_CODEU", "TEAM_NAMEU", "SHIFT_CODEU", "SHIFT_NAMEU", "MACHINE_CODEU", "MACHINE_NAMEU", "BRAND_CODEU", "BRAND_NAMEU", "ORIGIN_WORK_NOU", "PRODUCTION_PLAN_DETAIL_STATUSU", "PRODUCTION_BEGIN_TIMEU", "PRODUCTION_END_TIMEU", "CREATE_TIMEU", "UPDATE_TIMEU", "ROW_VERSIONU")
  values ( SYS_GUID(),  V_PLAN_NO ,  '1' ,  '1' ,  '�װ�' , null, null,  'B201' ,  '1#��װ��' ,  '69010281617180001' ,  '��������â����' , null,  '0' , null, null,  SYSDATE ,  SYSDATE ,  SYS_GUID());

  update "C##FUSION"."WM_PRODUCTION_PLANU"
  set "AUDITORU" =  'admin' , "AUDIT_TIMEU" =  SYSDATE , "PRODUCTION_PLAN_STATUSU" =  '1' , "UPDATE_TIMEU" =  SYSDATE , "ROW_VERSIONU" =  SYS_GUID()
  where (("PRODUCTION_PLAN_NOU" =  V_PLAN_NO ));

  update "C##FUSION"."WM_PRODUCTION_PLANU"
  set "PRODUCTION_PLAN_STATUSU" =  '2' , "UPDATE_TIMEU" =  SYSDATE , "ROW_VERSIONU" =  SYS_GUID()
  where (("PRODUCTION_PLAN_NOU" =  V_PLAN_NO ));

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




commit;


