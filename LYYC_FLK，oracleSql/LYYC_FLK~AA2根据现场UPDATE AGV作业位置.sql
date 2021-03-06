CREATE OR REPLACE PROCEDURE pro_UpdateAGVPosition
is
  M_POSITION_CODE_LIST varchar2(400) := '';
  M_POSITION_NAME_LIST varchar2(400) := '';
  tempNum Integer;
      M_POSITION_CODE varchar2(400) := '';
      M_POSITION_NAME varchar2(400) := '';
begin
    M_POSITION_CODE_LIST :='102001,102002,102003,102004,102005,101001,101002,101003,101004,101005,104001,104002,104003,104004,104005,103001,103002,103003,103004,103005,106001,106002,106003,106004,106005,105001,105002,105003,105004,105005,108001,108002,108003,108004,108005,107001,107002,107003,107004,107005,202001,202002,203001,203002,204001,204002';
    M_POSITION_NAME_LIST :='4001,4002,4004,4005,4006,4007,4008,4009,4011,4012,4013,4014,4016,4017,4018,4019,4020,4021,4023,4024,4025,4026,4028,4029,4030,4031,4032,4033,4035,4036,4037,4038,4040,4041,4042,4043,4044,4045,4047,4048,3003,3004,3005,3006,3007,3008';
    tempNum := Length(M_POSITION_CODE_LIST)/3;
    dbms_output.put_line(tempNum);
    for i in 0 .. tempNum Loop
      M_POSITION_CODE := Get_StrArrayStrOfIndex(M_POSITION_CODE_LIST, ',', i);
      M_POSITION_NAME := Get_StrArrayStrOfIndex(M_POSITION_NAME_LIST, ',', i);
      if (trim(M_POSITION_CODE) is null) then
        continue;
      end if;
      dbms_output.put_line(' enter in LOOP M_POSITION_CODE :'||M_POSITION_CODE||'M_POSITION_NAME :='||M_POSITION_NAME);
      update "C##FUSION"."TM_WORK_POSITIONU" set "WORK_POSITION_NAMEU" =  M_POSITION_NAME , "SingleTravelPosition" =  '0' , "SingleLiftPosition" =  '0' 
          , "SingleForkExtension" =  '0' , "DoubleTravelPosition" =  '0' , "DoubleLiftPosition" =  '0' , "DoubleForkExtension" =  '0' , "SERVER_CODEU" =  '' , "SERVER_NAMEU" =  '' , "SUPPLY_POSITION_CODEU" =  '' , "REMARKU" =  '' , "UPDATE_TIMEU" =  SYSDATE , "ROW_VERSIONU" =  SYS_GUID()
          where (("WORK_POSITION_NOU" =  M_POSITION_CODE ) );
    END LOOP;
end;
/
SET SERVEROUTPUT ON;
EXEC pro_UpdateAGVPosition;
COMMIT;