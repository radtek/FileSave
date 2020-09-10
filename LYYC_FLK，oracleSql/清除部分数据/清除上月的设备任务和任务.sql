
SELECT COUNT(*) FROM TM_TASKU;
SELECT COUNT(*) FROM EM_EQUIPMENT_TASKU;

SELECT COUNT(*) FROM TM_TASKU WHERE CREATE_TIMEU <= ADD_MONTHS(SYSDATE, -1);
SELECT COUNT(*) FROM EM_EQUIPMENT_TASKU WHERE CREATE_TIMEU <= ADD_MONTHS(SYSDATE, -1);

DELETE FROM TM_TASKU WHERE CREATE_TIMEU <= ADD_MONTHS(SYSDATE, -1);
DELETE FROM EM_EQUIPMENT_TASKU WHERE CREATE_TIMEU <= ADD_MONTHS(SYSDATE, -1);

