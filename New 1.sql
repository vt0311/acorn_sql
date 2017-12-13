 SELECT A.DRUG_INGREDIENT_CODE, COUNT(A.DRUG_INGREDIENT_CODE) FROM DRUG_2015 A, BARCODEDATA B 
    WHERE A.DRUG_INGREDIENT_CODE = B.DRUG_INGREDIENT_CODE
    AND B.ATC_CD like 'N06A%'
    GROUP BY A.DRUG_INGREDIENT_CODE
    order by count(DRUG_INGREDIENT_CODE) desc;
    
    select count(*) from drug_2014;
    
    select * from BARCODEDATA where ATC_CD like '%N06A';
    
     CREATE TABLE Drug_2015_all
   (	
   	"BASE_YEAR" NUMBER(4,0), 
	"USER_ID" NUMBER(10,0), 
	"PRES_ID" NUMBER(10,0), 
	"SERIAL_NUM" NUMBER(4,0), 
	"SEX" NUMBER(1,0), 
	"AGE_CODE" NUMBER(2,0), 
	"SIDO_CODE" NUMBER(2,0), 
	"RECUPERATE_DATE" VARCHAR2(20 BYTE), 
	"DRUG_INGREDIENT_CODE" VARCHAR2(20 BYTE), 
	"DOSE_ONCE" FLOAT(126), 
	"DOSE_ONEDAY" NUMBER(4,0), 
	"DOSE_DAYS" NUMBER(4,0), 
	"UNIT_COST" NUMBER(6,0), 
	"PRICE" NUMBER(10,0)
   );
   
   
   
   insert into Drug_2015_all select * from Drug_2015;
   
    select count(*) from (
 SELECT * FROM DRUG_2015
 union 
 select * from drug_2015_2); 
 


 select count(*) from drug_2012;
 -- select count(*) from drug_2013;
  select count(*) from drug_2014_1;
  select count(*) from drug_2014_2;
  select count(*) from drug_2011;
  
  select * from dba_users;




select * from dba_tablespaces;



select * from dba_data_files; 


  
select file_name, tablespace_name, 
bytes/1024/1024 as MB from  dba_data_files;


select * from drug_2015_all;

drop table drug_2015_all;

CREATE TABLE Drug_2015_all
   (	
   	"BASE_YEAR" NUMBER(4,0), 
	"USER_ID" NUMBER(10,0), 
	"PRES_ID" NUMBER(10,0), 
	"SERIAL_NUM" NUMBER(4,0), 
	"SEX" NUMBER(1,0), 
	"AGE_CODE" NUMBER(2,0), 
	"SIDO_CODE" NUMBER(2,0), 
	"RECUPERATE_DATE" VARCHAR2(20 BYTE), 
	"DRUG_INGREDIENT_CODE" VARCHAR2(20 BYTE), 
	"DOSE_ONCE" FLOAT(126), 
	"DOSE_ONEDAY" NUMBER(4,0), 
	"DOSE_DAYS" NUMBER(4,0), 
	"UNIT_COST" NUMBER(6,0), 
	"PRICE" NUMBER(10,0)
   ) tablespace users;
   
      CREATE TABLE N06A_DRUG AS (  
        SELECT * FROM
        (SELECT * FROM DRUG_2012 
         UNION ALL
         SELECT * FROM DRUG_2013
         UNION ALL
          SELECT * FROM DRUG_2014_1
          UNION ALL
           SELECT * FROM DRUG_2014_2
            UNION ALL
            SELECT * FROM DRUG_2015
            UNION ALL
            SELECT * FROM DRUG_2015_2) A,
       (SELECT 
       PRODUCT_NAME , 
      COMPANY_NAME ,
      DRUG_STD , 
      QTY ,
      DOSAGE_TYPE , 
      PACKING_TYPE ,
      PRODUCT_STD_CD ,
      PERMISSION_DATE ,
      NORMAL_OR_SPECIAL ,
      REPRESENT_CD , 
      STD_CD,
      NEW_CD ,  
      DRUG_INGREDIENT_CODE as DRUG_INGREDIENT_CODE2 ,
      CANCEL_DATE,
      TRANSFER_START_DATE ,
      TRANSFER_END_DATE ,
      SERIAL_YN ,
      SERIAL_REASON ,
      ATC_CD ,
      SPECIAL_CARE ,
      DECODE 
       FROM BARCODEDATA WHERE ATC_CD LIKE 'N06A%' 
       AND DRUG_INGREDIENT_CODE IS NOT NULL) B
        WHERE A.DRUG_INGREDIENT_CODE = B.DRUG_INGREDIENT_CODE2
        ) ;
        
        select count(*) from drug_2011;

select * from N06A_DRUG_VIEW;
        
            