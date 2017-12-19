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

-- 201
   SELECT * FROM
        (SELECT * FROM DRUG_2015
        union all 
        SELECT * FROM DRUG_2015_2
        ) A,
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
       FROM BARCODEDATA WHERE ATC_CD LIKE 'N06AB%' 
       AND DRUG_INGREDIENT_CODE IS NOT NULL) B
        WHERE A.DRUG_INGREDIENT_CODE = B.DRUG_INGREDIENT_CODE2;
        

            select * from N06A_DRUG_2015 where 
			
			
			
			
			
			 SELECT count(*) FROM
        (SELECT * FROM DRUG_2012
       
        ) A,
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
       FROM BARCODEDATA WHERE ATC_CD LIKE 'N06AB%' 
       AND DRUG_INGREDIENT_CODE IS NOT NULL) B
        WHERE A.DRUG_INGREDIENT_CODE(+) = B.DRUG_INGREDIENT_CODE2;
        
        
         SELECT  * FROM
        (SELECT * FROM DRUG_2012
       
        ) A  inner join
       (SELECT 
      
      DRUG_INGREDIENT_CODE as DRUG_INGREDIENT_CODE2 ,
     
      ATC_CD 
 
       FROM BARCODEDATA WHERE ATC_CD LIKE 'N06AB%' 
       AND DRUG_INGREDIENT_CODE IS NOT NULL) B
        on A.DRUG_INGREDIENT_CODE(+) = B.DRUG_INGREDIENT_CODE2
        group by pres_id;
        
        select drug_ingredient_code, atc_cd from barcodedata where atc_cd like 'N06AB%' group by atc_cd, drug_ingredient_code ; 
        
    select * from     
   (select * from DRUG_2012) A,     
   (select drug_ingredient_code as  drug_ingredient_code2, atc_cd from barcodedata where atc_cd like 'N06AB%' group by drug_ingredient_code, atc_cd order by atc_cd) B 
   where A.DRUG_INGREDIENT_CODE = B.DRUG_INGREDIENT_CODE2
 --  and DRUG_INGREDIENT_CODE2 is null
;

select  atc_cd from barcodedata where atc_cd like 'N06AB%' group by drug_ingredient_code, atc_cd order by atc_cd;

 select A.*, B.ATC_CD from     
   (select * from DRUG_2012
   union all
   select * from DRUG_2013
      union all
   select * from DRUG_2014
      union all
   select * from DRUG_2015
   ) A,     
   (select atc_cd, DRUG_INGREDIENT_CODE from barcodedata where atc_cd like 'N06A%' group by DRUG_INGREDIENT_CODE, atc_cd order by atc_cd) B 
   where A.DRUG_INGREDIENT_CODE = B.DRUG_INGREDIENT_CODE;
   
   -- weather_drug0
   select * from 
   (select * from drug_dose) A right outer JOIN 
 (select * from weather_solar) B
   on A.RECUPERATE_DATE = B.RECUPERATE_DATE
   order by A.RECUPERATE_DATE; 
   
   
   -- 2012 count
   select RECUPERATE_DATE , count(RECUPERATE_DATE) from
   ( select A.RECUPERATE_DATE,  B.ATC_CD from     
   (select * from DRUG_2012 ) A,     
   (select atc_cd, DRUG_INGREDIENT_CODE from barcodedata where atc_cd like 'N06AB%' group by DRUG_INGREDIENT_CODE, atc_cd order by atc_cd) B 
   where A.DRUG_INGREDIENT_CODE = B.DRUG_INGREDIENT_CODE
   )
   group by RECUPERATE_DATE
   order by RECUPERATE_DATE asc ;
   
   
    -- 2013 count
   select RECUPERATE_DATE , count(RECUPERATE_DATE) from
   ( select A.RECUPERATE_DATE,  B.ATC_CD from     
   (select * from DRUG_2013
   ) A,     
   (select atc_cd, DRUG_INGREDIENT_CODE from barcodedata where atc_cd like 'N06AB%' group by DRUG_INGREDIENT_CODE, atc_cd order by atc_cd) B 
   where A.DRUG_INGREDIENT_CODE = B.DRUG_INGREDIENT_CODE
   )
   group by RECUPERATE_DATE
   order by RECUPERATE_DATE asc ;


    -- 2014 count
   select RECUPERATE_DATE , count(RECUPERATE_DATE) as COUNT from
   ( select A.RECUPERATE_DATE,  B.ATC_CD from     
   (select * from DRUG_2014_1
   union all
   select * from DRUG_2014_2
   ) A,     
   (select atc_cd, DRUG_INGREDIENT_CODE from barcodedata where atc_cd like 'N06AB%' group by DRUG_INGREDIENT_CODE, atc_cd order by atc_cd) B 
   where A.DRUG_INGREDIENT_CODE = B.DRUG_INGREDIENT_CODE
   )
   group by RECUPERATE_DATE
   order by RECUPERATE_DATE asc ;
   
   
   -- 2015 count
   select RECUPERATE_DATE , count(RECUPERATE_DATE) as COUNT from
   ( select A.RECUPERATE_DATE,  B.ATC_CD from     
   (select * from DRUG_2015
   union all
   select * from DRUG_2015_2
   ) A,     
   (select atc_cd, DRUG_INGREDIENT_CODE from barcodedata where atc_cd like 'N06AB%' group by DRUG_INGREDIENT_CODE, atc_cd order by atc_cd) B 
   where A.DRUG_INGREDIENT_CODE = B.DRUG_INGREDIENT_CODE
   )
   group by RECUPERATE_DATE
   order by RECUPERATE_DATE asc ;
   
   -- 2012 ~ 2015 Ä«¿îÆ®
    select RECUPERATE_DATE , count(RECUPERATE_DATE) as COUNT from
   ( select A.RECUPERATE_DATE,  B.ATC_CD from     
   (
   select * from DRUG_2012
   union all
   select * from DRUG_2013
     union all
   select * from DRUG_2014_1
   union all
   select * from DRUG_2014_2
     union all
   select * from DRUG_2015
   union all
   select * from DRUG_2015_2
   ) A,     
   (select atc_cd, DRUG_INGREDIENT_CODE from barcodedata where atc_cd like 'N06A%' group by DRUG_INGREDIENT_CODE, atc_cd order by atc_cd) B 
   where A.DRUG_INGREDIENT_CODE = B.DRUG_INGREDIENT_CODE
   )
   group by RECUPERATE_DATE
   order by RECUPERATE_DATE asc ;
   
   
    select RECUPERATE_DATE,  COUNT, dose_once, dose_oneday, dose_days, (dose_once*dose_oneday*dose_days) as dose_total, price  from
    (
   select A.RECUPERATE_DATE, count(A.RECUPERATE_DATE) as COUNT, A.dose_once, A.dose_oneday, A.dose_days, A.price , B.ATC_CD from     
   (
   select * from DRUG_2012
   union all
   select * from DRUG_2013
     union all
   select * from DRUG_2014_1
    union all
   select * from DRUG_2014_2
     union all
   select * from DRUG_2015
    union all
   select * from DRUG_2015_2
   ) A,     
   (select atc_cd, DRUG_INGREDIENT_CODE from barcodedata where atc_cd like 'N06AB%' 
   group by DRUG_INGREDIENT_CODE, atc_cd order by atc_cd) B 
   where A.DRUG_INGREDIENT_CODE = B.DRUG_INGREDIENT_CODE
   )
   group by RECUPERATE_DATE
   order by RECUPERATE_DATE asc ;
   
   
select RECUPERATE_DATE, count(RECUPERATE_DATE) from drug_2012 where  group by RECUPERATE_DATE order by RECUPERATE_DATE;

select RECUPERATE_DATE, count(RECUPERATE_DATE)  from
(select * from drug_dose) A INNER JOIN 
 (select * from weather_solar) B
   on A.RECUPERATE_DATE = B.RECUPERATE_DATE
   order by A.RECUPERATE_DATE; 
   
   -- inner JOIN 
     select count(*) from 
   (select * from n06a_drug_dose) A JOIN 
 (select * from weather_solar) B
   on A.RECUPERATE_DATE = B.RECUPERATE_DATE
   order by A.RECUPERATE_DATE; 
   
    select * from 
   (select * from n06a_drug_dose) A JOIN 
 (select * from weather_solar) B
   on A.RECUPERATE_DATE = B.RECUPERATE_DATE
   order by A.RECUPERATE_DATE; 
   
   -- right outer JOIN 
       select count(*) from 
   (select * from n06a_drug_dose) A right outer JOIN 
 (select * from weather_solar) B
   on A.RECUPERATE_DATE = B.RECUPERATE_DATE
   order by A.RECUPERATE_DATE; 
   