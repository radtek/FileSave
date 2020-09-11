


----产品信息
SELECT * FROM BI_PRODUCT_UNITU WHERE PRODUCT_CODEU='150600002049';
SELECT * FROM BI_PRODUCTU WHERE PRODUCT_NAMEU LIKE '%防伪%';
SELECT UNIT_CODEU,TRANSFER_RATE FROM BI_PRODUCT_UNITU WHERE UNIT_TYPEU=1;
----产品单位换算，直接从配盘找得
  SELECT DISTINCT A1, A2, B1/B2, B11, 1, PRU01.UNIT_NAMEU B21
  FROM
    (SELECT A1, A2, B1, PRU.UNIT_NAMEU B11, B2, B21 
    FROM
    (SELECT MP.PRODUCT_CODEU A1, PR.PRODUCT_NAMEU A2, MP.WAREHOUSE_QUANTITYU/MP.WAREHOUSE_TRANSFER_RATEU B1, MP.WAREHOUSE_UNIT_CODEU B11
      , MP.WORKSHOP_QUANTITYU/MP.WORKSHOP_TRANSFER_RATEU B2, MP.WORKSHOP_UNIT_CODEU B21
      FROM BI_MATCH_PALLET_DETAILU MP
      inner join BI_PRODUCTU PR on PR.PRODUCT_CODEU = MP.PRODUCT_CODEU
      ) TB_1
      INNER JOIN BI_PRODUCT_UNITU PRU ON PRU.UNIT_CODEU = TB_1.B11) TB_2
      INNER JOIN BI_PRODUCT_UNITU PRU01 ON PRU01.UNIT_CODEU = TB_2.B21
      ORDER BY A2;


----配盘管理
--UPDATE BI_MATCH_PALLETU SET ACTIVEU='0' WHERE LENGTH(MATCH_PALLET_CODEU) >LENGTH('HQQXBYH-2001');
SELECT * FROM BI_MATCH_PALLETU WHERE LENGTH(MATCH_PALLET_CODEU) >LENGTH('HQQXBYH-2001');
SELECT * FROM BI_MATCH_PALLET_DETAILU WHERE PRODUCT_CODEU='03050101000000056';
SELECT * FROM BI_MATCH_PALLET_DETAILU WHERE MATCH_PALLET_CODEU='HQQXBYH-1003';
SELECT * FROM BI_MATCH_PALLET_DETAILU
  WHERE MATCH_PALLET_CODEU IN
  (SELECT MATCH_PALLET_CODEU FROM BI_MATCH_PALLETU WHERE BRAND_CODESU='69010281617180001' AND MATCH_PALLET_CODEU LIKE '%1001%');


----如何对比出BI_PRODUCT_UNITU和BI_MATCH_PALLET_DETAILU的转换率是否都一致？？？
SELECT CASE WHEN WAREHOUSE_TRANSFER_RATEU != TRANSFER_RATEU  THEN 0 ELSE 1 END AS TRANSFER_RATEU, PRODUCT_CODEU
  FROM(SELECT PALLET_DETAIL.PRODUCT_CODEU, PALLET_DETAIL.WAREHOUSE_TRANSFER_RATEU, PRODUCT_UNIT.TRANSFER_RATEU
      FROM BI_MATCH_PALLET_DETAILU PALLET_DETAIL
      INNER JOIN BI_PRODUCT_UNITU PRODUCT_UNIT ON PRODUCT_UNIT.PRODUCT_CODEU = PALLET_DETAIL.PRODUCT_CODEU AND PRODUCT_UNIT.UNIT_TYPEU=1)
  ORDER BY TRANSFER_RATEU; --这只对比了仓库单位
SELECT CASE WHEN TRANSFER_RATEU01 != TRANSFER_RATEU  THEN 0 ELSE 1 END AS TRANSFER_RATEU, PRODUCT_CODEU
  FROM(SELECT PALLET_DETAIL.PRODUCT_CODEU, PALLET_DETAIL.WORKSHOP_TRANSFER_RATEU AS TRANSFER_RATEU01, PRODUCT_UNIT.TRANSFER_RATEU
      FROM BI_MATCH_PALLET_DETAILU PALLET_DETAIL
      INNER JOIN BI_PRODUCT_UNITU PRODUCT_UNIT ON PRODUCT_UNIT.PRODUCT_CODEU = PALLET_DETAIL.PRODUCT_CODEU AND PRODUCT_UNIT.UNIT_TYPEU=2)
  ORDER BY TRANSFER_RATEU;


----查找库存中的厂商信息*************
----查找盘位、货位
SELECT * FROM WM_LOCATIONU WHERE LOCATION_CODEU LIKE '%w002r05%';
SELECT * FROM WM_PALLETU WHERE IDU='028C2BD57E43874A81A78816ACF030CB';
SELECT * FROM WM_PALLETU WHERE PALLET_TYPE_NAMEU LIKE '%%' AND BRAND_NAMESU LIKE '%红旗渠（芒果）%';
SELECT * FROM WM_PALLETU WHERE IDU IN
(
SELECT DISTINCT PALLET_IDU FROM WM_STORAGEU WHERE FACTURER_CODEU NOT IN (SELECT BI_FACTURERU.FACTURER_CODEU FROM BI_FACTURERU)
);
SELECT * FROM WM_STORAGEU WHERE LOCATION_CODEU='101002';
SELECT * FROM WM_STORAGEU WHERE PALLET_IDU IN
  (SELECT IDU FROM WM_PALLETU WHERE PALLET_TYPE_NAMEU LIKE '%%' AND BRAND_NAMESU LIKE '%红旗渠（芒果）%');
SELECT * FROM WM_STORAGEU WHERE FACTURER_NAMEU LIKE '%河南桐裕%'AND LENGTH(LOCATION_CODEU)=8;
----查找厂商时使用NOT IN时候，要注意值是否为null
SELECT * FROM BI_FACTURERU WHERE FACTURER_CODEU NOT IN
( 
  SELECT DISTINCT FACTURER_CODEU FROM WM_STORAGEU WHERE LENGTH(LOCATION_CODEU)=8 AND FACTURER_CODEU IS NOT NULL  --一定要考虑数值是否为null，不然得到的是错误的结果
);

----盘位和厂商
SELECT * FROM WM_PALLETU WHERE LENGTH(LOCATION_CODEU)=8 ORDER BY UPDATE_TIMEU DESC;
SELECT DISTINCT FACTURER_CODEU, FACTURER_NAMEU, LOCATION_CODEU FROM WM_STORAGEU WHERE LENGTH(LOCATION_CODEU)=8 AND FACTURER_NAMEU LIKE '%新郑金芒果%';
SELECT * FROM BI_FACTURERU;
----

----查找设备相关信息表
SELECT * FROM EM_EQUIPMENT_TASKU;
SELECT * FROM TM_OPERATION_EQUIPMENTU;
SELECT * FROM TM_WORK_EQUIPMENTU;


----////////机组呼叫，结单
SELECT * FROM WM_MACHINE_CALLU WHERE IDU='A9CE6BC276A7BC408898B2278D507080';
SELECT * FROM BI_MATCH_PALLET_DETAILU WHERE MATCH_PALLET_CODEU IN
  (SELECT WM_MACHINE_CALLU.MATCH_PALLET_CODEU FROM WM_MACHINE_CALLU WHERE IDU='14A68CD10484004E8DB1E6F24D99E615');
SELECT * FROM WM_MACHINE_CALLU WHERE PRODUCTION_PLAN_NOU='P202008050031' AND MACHINE_CODEU='B201';
SELECT * FROM WM_MACHINE_CALLU WHERE PALLET_BARCODEU='03790263'  AND MACHINE_CODEU='B201';
SELECT * FROM WM_MACHINE_CALL_DETAILU 
  WHERE MACHINE_CALL_IDU IN (SELECT IDU FROM WM_MACHINE_CALLU WHERE TASK_NOU='11961');
SELECT * FROM WM_MACHINE_CALL_DETAILU 
  WHERE MACHINE_CALL_IDU IN (SELECT IDU FROM WM_MACHINE_CALLU WHERE WM_MACHINE_CALLU.BRAND_NAMEU LIKE '%硬帝豪%');
SELECT * FROM WM_MACHINE_CALL_DETAILU WHERE PRODUCT_CODEU='03060200000000071';
----余料退库4,移交退料5
SELECT * FROM WM_MACHINE_CALLU WHERE CALL_TYPEU=3 AND TASK_NOU='10319'; --03790263
----机组盘位
SELECT * FROM WM_MACHINE_PALLETU  WHERE WORK_POSITION_NOU='108002';
SELECT * FROM WM_MACHINE_PALLET_DETAILU WHERE MACHINE_CODEU='B201';
-----查询机组移交
SELECT * FROM WM_MACHINE_HANDOVERU ORDER BY CREATE_TIMEU DESC;
SELECT * FROM WM_MACHINE_HANDOVER_DETAILU ORDER BY UPDATE_TIMEU DESC, TRANSFER_BILL_NOU;
SELECT * FROM WM_MACHINE_HANDOVERU WHERE TRANSFER_BILL_NOU='T202008180004' ORDER BY CREATE_TIMEU DESC;
SELECT RECEIVE_QUANTITYU, TRANSFER_QUANTITYU, TRANSFER_RATEU, TRANSFER_BILL_NOU, TO_CHAR(CREATE_TIMEU, 'yy-mm-dd hh24:mi:ss')
  FROM WM_MACHINE_HANDOVER_DETAILU 
  WHERE RECEIVE_QUANTITYU != TRANSFER_QUANTITYU ORDER BY UPDATE_TIMEU DESC, TRANSFER_BILL_NOU;
SELECT * FROM WM_MACHINE_HANDOVERU
   WHERE CURRENT_PLANU='P202008120024' ORDER BY CREATE_TIMEU DESC;
SELECT * FROM WM_MACHINE_HANDOVER_DETAILU WHERE TRANSFER_BILL_NOU =
  (SELECT TRANSFER_BILL_NOU FROM WM_MACHINE_HANDOVERU WHERE CURRENT_PLANU='P202008120024' AND ROWNUM=1)
  ORDER BY UPDATE_TIMEU DESC, TRANSFER_BILL_NOU;

SELECT * FROM WM_MACHINE_RETURN_DETAILU
  WHERE RETURN_BILL_NOU IN (SELECT RETURN_BILL_NOU FROM WM_MACHINE_RETURNU WHERE WM_MACHINE_RETURNU.BRAND_NAMEU LIKE '%硬帝豪%') AND PRODUCT_CODEU='03050101000000031';
------生产计划
SELECT * FROM WM_PRODUCTION_PLANU;
-----//////////////



----设备状态
SELECT * FROM EM_EQUIPMENT_STATUSU WHERE EQUIPMENT_STATUS_CODEU='4';
SELECT * FROM EM_EQUIPMENT_ALARMU WHERE ALARM_CODEU='AGV_0000';


----单据
SELECT * FROM WM_OUT_BILLU WHERE OUT_BILL_STATUSU='5' ORDER BY MAKE_TIMEU DESC;
SELECT * FROM WM_OUT_BILLU WHERE OUT_BILL_STATUSU!='5' ORDER BY MAKE_TIMEU DESC;
-----update WM_OUT_BILLU SET OUT_BILL_STATUSU='5';
SELECT * FROM WM_IN_BILLU;
SELECT * FROM WM_IN_BILL_ALLOTU WHERE LOCATION_CODEU='01-15-02';
----领退料单据
SELECT * FROM WM_MANUAL_MATERIAL_BILLU;
SELECT * FROM WM_MANUAL_MATERIAL_BILL_DETAILU;

----数据词典
SELECT * FROM SYS_DICTIONARYU;
SELECT * FROM SYS_DICTIONARYU WHERE DICTIONARY_NAMEU LIKE '%单据%' ORDER BY DICTIONARY_GROUP_IDU;
SELECT * FROM SYS_DICTIONARYU WHERE IDU='8B6ACF77993F5141940FBA65861E3B5A' ORDER BY DICTIONARY_GROUP_IDU;
SELECT * FROM SYS_DICTIONARY_DETAILU where DICTIONARY_IDU IN (SELECT IDU FROM SYS_DICTIONARYU WHERE DICTIONARY_NAMEU LIKE '%单据类型%' ) ORDER BY VALUEU;
SELECT * FROM SYS_DICTIONARY_DETAILU where DICTIONARY_IDU IN (SELECT IDU FROM SYS_DICTIONARYU WHERE DICTIONARY_KEYU LIKE '%JobStatus%' ) ORDER BY VALUEU;

SELECT PARAMETER_VALUE_TYPEU FROM SYS_PARAMETERU;

----参数设置
SELECT * FROM SYS_PARAMETERU;
-----update SYS_PARAMETERU set PARAMETER_VALUE_TYPEU='0', DICTIONARY_KEYU='';

----生产计划
SELECT * FROM WM_PRODUCTION_PLANU;
SELECT * FROM WM_PRODUCTION_PLAN_DETAILU;
SELECT * FROM WM_PRODUCTION_PLAN_DETAILU
  WHERE PRODUCTION_PLAN_NOU IN (SELECT PRODUCTION_PLAN_NOU FROM WM_PRODUCTION_PLANU WHERE WM_PRODUCTION_PLANU.AUDIT_TIMEU BETWEEN to_date('2020/9/7 0:00:00', 'yyyy-mm-dd hh24:mi:ss') AND to_date('2020/9/8 0:00:00', 'yyyy-mm-dd hh24:mi:ss'))
  --AND TEAM_NAMEU LIKE '%乙班%'
  ORDER BY MACHINE_NAMEU, CREATE_TIMEU DESC;