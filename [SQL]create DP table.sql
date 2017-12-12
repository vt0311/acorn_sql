  CREATE TABLE DrugPresc
   (	"BASE_YEAR" NUMBER(4,0), 
	"USER_ID" NUMBER(10,0), 
	"PRES_ID" NUMBER(10,0), 
	"SERIAL_NUM" NUMBER(3,0), 
	"SEX" NUMBER(1,0), 
	"AGE_CODE" NUMBER(2,0), 
	"SIDO_CODE" NUMBER(2,0), 
	"RECUPERATE_DATE" DATE, 
	"DRUG_INGREDIENT_CODE" VARCHAR2(20 BYTE), 
	"DOSE_ONCE" FLOAT(126), 
	"DOSE_ONEDAY" NUMBER(2,0), 
	"DOSE_DAYS" NUMBER(4,0), 
	"UNIT_COST" NUMBER(6,0), 
	"PRICE" NUMBER(10,0)
   );