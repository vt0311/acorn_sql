 CREATE TABLE Drug_2013
   (	"BASE_YEAR" NUMBER(4,0), 
	"USER_ID" NUMBER(20,0), 
	"PRES_ID" NUMBER(20,0), 
	"SERIAL_NUM" NUMBER(4,0), 
	"SEX" NUMBER(2,0), 
	"AGE_CODE" NUMBER(4,0), 
	"SIDO_CODE" NUMBER(4,0), 
	"RECUPERATE_DATE"  VARCHAR2(40 BYTE), 
	"DRUG_INGREDIENT_CODE" VARCHAR2(40 BYTE), 
	"DOSE_ONCE" FLOAT(126), 
	"DOSE_ONEDAY" NUMBER(4,0), 
	"DOSE_DAYS" NUMBER(4,0), 
	"UNIT_COST" NUMBER(6,0), 
	"PRICE" NUMBER(10,0)
   );
   
    CREATE TABLE Drug_2012
   (	"BASE_YEAR" NUMBER(4,0), 
	"USER_ID" NUMBER(20,0), 
	"PRES_ID" NUMBER(20,0), 
	"SERIAL_NUM" NUMBER(4,0), 
	"SEX" NUMBER(2,0), 
	"AGE_CODE" NUMBER(4,0), 
	"SIDO_CODE" NUMBER(4,0), 
	"RECUPERATE_DATE"  VARCHAR2(40 BYTE), 
	"DRUG_INGREDIENT_CODE" VARCHAR2(40 BYTE), 
	"DOSE_ONCE" FLOAT(126), 
	"DOSE_ONEDAY" NUMBER(4,0), 
	"DOSE_DAYS" NUMBER(4,0), 
	"UNIT_COST" NUMBER(6,0), 
	"PRICE" NUMBER(10,0)
   );
   
    CREATE TABLE Drug_2011
   (	"BASE_YEAR" NUMBER(4,0), 
	"USER_ID" NUMBER(20,0), 
	"PRES_ID" NUMBER(20,0), 
	"SERIAL_NUM" NUMBER(4,0), 
	"SEX" NUMBER(2,0), 
	"AGE_CODE" NUMBER(4,0), 
	"SIDO_CODE" NUMBER(4,0), 
	"RECUPERATE_DATE"  VARCHAR2(40 BYTE), 
	"DRUG_INGREDIENT_CODE" VARCHAR2(40 BYTE), 
	"DOSE_ONCE" FLOAT(126), 
	"DOSE_ONEDAY" NUMBER(4,0), 
	"DOSE_DAYS" NUMBER(4,0), 
	"UNIT_COST" NUMBER(6,0), 
	"PRICE" NUMBER(10,0)
   );
   select count(*) from drug_2012;
    select count(*) from drug_2013;
     select count(*) from drug_2014;
      select count(*) from drug_2015;
      
      alter table drug_2015 modify ( ;
      
      CREATE TABLE weather_2002_2015 (
      date VARCHAR2(40 BYTE), 
      
      );
      
      
      
      create table barCodeData(
    "PRODUCT_NAME" VARCHAR2(500 BYTE), 
	"COMPANY_NAME" VARCHAR2(200 BYTE), 
    "DRUG_STD" VARCHAR2(200 BYTE), 
    "QTY" VARCHAR2(200 BYTE), 
	"DOSAGE_TYPE" VARCHAR2(200 BYTE), 
	"PACKING_TYPE" VARCHAR2(200 BYTE), 
    "PRODUCT_STD_CD" VARCHAR2(200 BYTE), 
	"PERMISSION_DATE" VARCHAR2(200 BYTE),
    "NORMAL_OR_SPECIAL" VARCHAR2(200 BYTE), 
    "REPRESENT_CD" VARCHAR2(200 BYTE),  
    "STD_CD" VARCHAR2(200 BYTE),  
    "NEW_CD" VARCHAR2(200 BYTE),  
    "DRUG_INGREDIENT_CODE" VARCHAR2(200 BYTE),
    "MEMO" VARCHAR2(2000 BYTE),
    "CANCEL_DATE" VARCHAR2(200 BYTE),
    "TRANSFER_START_DATE" VARCHAR2(200 BYTE),
    "TRANSFER_END_DATE" VARCHAR2(200 BYTE),
    "SERIAL_YN" VARCHAR2(100 BYTE),
    "SERIAL_REASON" VARCHAR2(200 BYTE),
    "ATC_CD" VARCHAR2(50 BYTE),
    "SPECIAL_CARE" VARCHAR2(200 BYTE),
    "DECODE" VARCHAR2(200 BYTE)
    ); 
      select count(*) from barcodedata;
      
      delete  from barcodedata;
      
      drop table drug_2011;
      
      --  DRUG_2012���� ATC CODE �� N06A�� �̴� ����  
       SELECT A.DRUG_INGREDIENT_CODE, COUNT(A.DRUG_INGREDIENT_CODE) FROM 
            DRUG_2012 A, BARCODEDATA B 
    WHERE A.DRUG_INGREDIENT_CODE = B.DRUG_INGREDIENT_CODE
    AND B.ATC_CD like 'N06A%'
    GROUP BY A.DRUG_INGREDIENT_CODE
    order by count(DRUG_INGREDIENT_CODE) desc;
    
    