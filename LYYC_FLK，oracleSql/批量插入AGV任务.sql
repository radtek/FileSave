

create or replace function f_A1(
    V_AGV_POSITION_NO IN VARCHAR2
)
RETURN varchar2
IS
  M_POSITION_WM_LIST varchar2(400) := '';
  M_POSITION_AGV_LIST varchar2(400) := '';
      M_POSITION_WM varchar2(400) := '';
      M_POSITION_AGV varchar2(400) := '';
      V_TEMP_NUM INTEGER;
      V_TEMP_RETURNVAL VARCHAR2(50) := '';
BEGIN
    M_POSITION_WM_LIST :='102001,102002,102003,102004,102005,101001,101002,101003,101004,101005,104001,104002,104003,104004,104005,103001,103002,103003,103004,103005,106001,106002,106003,106004,106005,105001,105002,105003,105004,105005,108001,108002,108003,108004,108005,107001,107002,107003,107004,107005,202001,202002,203001,203002,204001,204002,2226,2210,2211';
    M_POSITION_AGV_LIST :='4001,4002,4004,4005,4006,4007,4008,4009,4011,4012,4013,4014,4016,4017,4018,4019,4020,4021,4023,4024,4025,4026,4028,4029,4030,4031,4032,4033,4035,4036,4037,4038,4040,4041,4042,4043,4044,4045,4047,4048,3003,3004,3005,3006,3007,3008,1001,1002,1003';
    V_TEMP_NUM := Length(M_POSITION_WM_LIST)/7 + 1;
--    dbms_output.put_line(V_TEMP_NUM);
    FOR I_INDEX IN 0 .. V_TEMP_NUM LOOP
        M_POSITION_AGV := Get_StrArrayStrOfIndex(M_POSITION_AGV_LIST, ',', I_INDEX);
        IF (M_POSITION_AGV = V_AGV_POSITION_NO) THEN
            V_TEMP_RETURNVAL := Get_StrArrayStrOfIndex(M_POSITION_WM_LIST, ',', I_INDEX);
        END IF;
    END LOOP;
    RETURN V_TEMP_RETURNVAL;
    EXCEPTION WHEN OTHERS THEN
        RAISE;
END;
/

CREATE OR REPLACE FUNCTION f_A2
return varchar2
IS
  V_ORIGIN_LOCATION_CODEU VARCHAR2(50); 
  V_TARGET_LOCATION_CODEU VARCHAR2(50);
  V_ORIGIN_WORK_POSITION_NOU VARCHAR2(50);
  V_TARGET_WORK_POSITION_NOU VARCHAR2(50);
  V_CURRENT_WORK_POSITION_NOU VARCHAR2(50);
  V_WORK_PATH_CODEU VARCHAR2(50);
  i_Index integer;
  V_FROM varchar2(200); 
  V_TO varchar2(200);
  V_SRC_AGV varchar2(150);
  V_DEST_AGV varchar2(150);
  V_CUR_AGV varchar2(150);
  V_IS_GET_FORM_PRODUCT_ROOM BOOLEAN := TRUE;
Begin
  i_Index := 1;
  select max(task_nou) into i_Index from TM_TASKU;
  if (i_Index is null) then
    i_Index := 0;
  end if;
  V_FROM := '1002 1002 1002 1002 1002 1002 1002 1002 1002 1002';
  V_TO := '4004 4005 4006 4013 4008 4009 4012 4024 4020 4021';
  V_IS_GET_FORM_PRODUCT_ROOM := true;
  V_TO := '1003 1003';
  V_FROM := '4004 4005';
  V_IS_GET_FORM_PRODUCT_ROOM := false;
  V_FROM := '1002 1001 1002 1002';
  V_TO := '4005 4024 4020 4021';
  V_IS_GET_FORM_PRODUCT_ROOM := true; --从高架库旁边取货
  for i in 0 .. 20
  LOOP
    V_CUR_AGV :=  Get_StrArrayStrOfIndex(V_FROM, ' ', i);
    V_SRC_AGV := Get_StrArrayStrOfIndex(V_FROM, ' ', i);
    V_DEST_AGV := Get_StrArrayStrOfIndex(V_TO, ' ', i);
    dbms_output.put_line(V_TO);
    IF (V_IS_GET_FORM_PRODUCT_ROOM) THEN
        V_WORK_PATH_CODEU := 'CR01-AGV';
    ELSE
        V_WORK_PATH_CODEU := 'AGV-CR01';
    END IF;
    if(V_SRC_AGV != ' ') then
        --DBMS_OUTPUT.PUT_LINE(V_DEST_AGV);
        i_Index := i_Index + 1;
            --将AGV的作业位置根据词典转换为规范位置
            V_ORIGIN_LOCATION_CODEU := f_A1(V_SRC_AGV);
            V_TARGET_LOCATION_CODEU := f_A1(V_DEST_AGV);
            V_ORIGIN_WORK_POSITION_NOU := f_A1(V_SRC_AGV);
            V_TARGET_WORK_POSITION_NOU := f_A1(V_DEST_AGV);
            V_CURRENT_WORK_POSITION_NOU := f_A1(V_SRC_AGV);
            DBMS_OUTPUT.PUT_LINE('  V_ORIGIN_LOCATION_CODEU，V_TARGET_LOCATION_CODEU， V_ORIGIN_WORK_POSITION_NOU， V_TARGET_WORK_POSITION_NOU， V_CURRENT_WORK_POSITION_NOU，作业路径');
            DBMS_OUTPUT.PUT_LINE(V_ORIGIN_LOCATION_CODEU||'，' || V_TARGET_LOCATION_CODEU||'，'|| V_ORIGIN_WORK_POSITION_NOU||'，'|| V_TARGET_WORK_POSITION_NOU||'，'|| V_CURRENT_WORK_POSITION_NOU||'，'|| V_WORK_PATH_CODEU);
        --/*
        Insert into C##FUSION.TM_TASKU (IDU,BARCODESU,TASK_NOU,TASK_TYPEU,TASK_LEVELU,ORIGIN_LOCATION_CODEU,TARGET_LOCATION_CODEU,ORIGIN_PALLET_IDU,TARGET_PALLET_IDU
            ,ORIGIN_WORK_POSITION_NOU,TARGET_WORK_POSITION_NOU,CURRENT_WORK_POSITION_NOU,WORK_PATH_CODEU
            ,CURRENT_WORK_POSITION_STATUSU,TASK_STATUSU,STORAGE_SEQUENCEU,CAN_OPERATION_EQUIPMENTU,APPOINTED_OPERATION_EQUIPMENTU,SUPPLY_SERIAL_NUMBERU,GET_FINISHEDU,PRO_SAMPLING_BOX_NOSU,REMARKU,CREATE_TIMEU,UPDATE_TIMEU,ROW_VERSIONU) values 
            (SYS_GUID(),' ',i_Index,3,0,V_ORIGIN_LOCATION_CODEU,V_TARGET_LOCATION_CODEU,null,null,V_ORIGIN_WORK_POSITION_NOU,V_TARGET_WORK_POSITION_NOU
            ,V_CURRENT_WORK_POSITION_NOU,V_WORK_PATH_CODEU,1,0,0,',AGV,','',0,0,null,null,SYSDATE,SYSDATE,sys_guid());
        --*/
    end if;
  END LOOP;
  RETURN '^_^';
end;
/
SET SERVEROUTPUT ON;
DECLARE
    V_RET VARCHAR2(50);
    V_RIGHT_RETURNVAL VARCHAR2(50):='^_^';
BEGIN
    V_RET := f_A1('3008');
    V_RET := f_A2();
    DBMS_OUTPUT.PUT_LINE('f_A1()结果为：'||V_RET);
    COMMIT;
    EXCEPTION WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('SQLCODE = ' || SQLCODE);
        DBMS_OUTPUT.PUT_LINE('SQLERRM = ' || SQLERRM);
        ROLLBACK;
END;