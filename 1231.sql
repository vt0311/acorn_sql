  CREATE TABLE DrugPresc2002
   ("BASE_YEAR" NUMBER(4,0), 
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
   
   ALTER TABLE DRUGPRESC2002 MODIFY(컬럼명 데이터타입(데이터크기));

select * from drug_safety;

   DROP TABLE DRUG_SAFETY;
   
select * from DRUGPRESC2002;

select * from members order by salary  ;

select * from members ;

-- 실습용 데이터 추가하기
--begin
--	for i in 1..30 loop
--		insert into Boards(no, subject, writer, password, content, readhit, regdate)
--		values(myboard.nextval, '주제', 'hong', '1234', '내용', 0, sysdate);		
--	end loop;
--end;
--/
--update boards set writer='kim' where mod( no, 3 ) = 0 ;
--update boards set writer='park' where mod( no, 3 ) = 1 ;
--commit ;

-- begin
--	for i in 1..300 loop
--		insert into members(id,name,password,salary,hiredate,gender,hobby,job,zipcode,address1,address2,mpoint)
--		values('hong' || i ,'홍길동','1234',100,sysdate,'남자','당구','학생','123-456','서울시 용산구','도원동',10);
--	end loop;
--end;
--/

-- begin
--	for i in 1..300 loop
--		insert into products(num, name, company, image, stock, price, category, contents, point, inputdate)
--		values(seqprod.nextval, '소보루', '샤니', 'soboru01.jpg', 100, 1000, 'bread', '맛있어요', 10, sysdate );		
--	end loop;
--end;
--/

--ctas 방식

create table table1 as 
select members.id, members.name, boards.content
from members inner join  boards
on members.id = boards.writer ;

-- 성별이 남자인 회원들의 이름과 입사일자을 CTAS 방식으로 만드시오.
create table table2 as 
select name, hiredate from members 
where gender = '남자';

select * from table2;

create table postcodes(    
    area_cd varchar2(50),
    si_nm varchar2(50),
    sgg_nm varchar2(50),
    emd_nm varchar2(50),
    ri_nm varchar2(50),
    rd_nm varchar2(50),
    udrgrnd_yn varchar2(50),
    mt_yn varchar2(50),
    bd_ma_sn varchar2(50),
    bd_sb_sn varchar2(50),
    lndn_ma_sn varchar2(50),
    lndn_sb_sn varchar2(50),
    search_word varchar2(255),
    display_word varchar2(255),
    display_word_dtail varchar2(255)
); 




create table postcodes(    
    area_cd varchar2(50),
    si_nm varchar2(50),
    sgg_nm varchar2(50),
    emd_nm varchar2(50),
    ri_nm varchar2(50),
    rd_nm varchar2(50),
    udrgrnd_yn varchar2(50),
    mt_yn varchar2(50),
    bd_ma_sn varchar2(50),
    bd_sb_sn varchar2(50),
    lndn_ma_sn varchar2(50),
    lndn_sb_sn varchar2(50),
    search_word varchar2(255),
    display_word varchar2(255),
    display_word_dtail varchar2(255)
); 

create table terror_data (
    eventid	varchar2(50),
    iyear varchar2(50),
    imonth	varchar2(50),
    iday	varchar2(50),
    country	varchar2(50),
    country_txt	varchar2(50),
    region	varchar2(50),
    region_txt	varchar2(50),
    provstate	varchar2(50),
    city	varchar2(50),
    latitude	varchar2(50),
    longitude varchar2(50)

)

create table terror_data2 (
    eventid	varchar2(50),
    iyear varchar2(50),
    imonth	varchar2(50),
    iday	varchar2(50),
    country	varchar2(50),
    country_txt	varchar2(50),
    summary varchar2(1000)

);

select * from terror_data2;
drop table terror_data2;
delete terror_data2 ;

drop table mytable1;

create table mytable1(  
	eventid varchar2(255),
	iyear number,
	imonth number,
	iday number,
	country varchar2(255),
	country_txt varchar2(255),
	region varchar2(255),
	region_txt varchar2(255),
	provstate varchar2(255),
	city varchar2(255),
	latitude varchar2(255),
	longitude varchar2(255)
); 

drop table mytable2;

create table mytable2(    
	eventid number,
	iyear number,
	imonth number,
	iday number,
	country varchar2(255),
	country_txt varchar2(255),
	summary varchar2(1024) 
); 
commit;
select * from mytable1;
select * from mytable1 where eventid='eventid';
select * from mytable2 where eventid='eventid';

alter table mytable1 modify (iyear number);
alter table mytable1 modify (imonth number  default 0);

select * from mytable2;
-------------------------------------------------------------------
-- 임시 컬럼 추가(iyear2)
alter table mytable1 add (iyear2 number default 0);

-- 임시 컬럼에 iyear 컬럼을 수치로 바꿔서 업데이트
update mytable1 set iyear2 = to_number(iyear);

-- 오리지널컬럼을 삭제
alter table mytable1 drop column iyear;

-- 임시 컬럼을 오리지널 이름으로 변경
alter table mytable1 rename column iyear2 to iyear;
------------------------------------------------------------------
-- 임시 컬럼 추가(imonth2)
alter table mytable1 add (imonth2 number default 0);

-- 임시 컬럼에 imonth 컬럼을 수치로 바꿔서 업데이트
update mytable1 set imonth2 = to_number(imonth);

-- 오리지널컬럼을 삭제
alter table mytable1 drop column imonth;

-- 임시 컬럼을 오리지널 이름으로 변경
alter table mytable1 rename column imonth2 to imonth;
--------------------------------------------------------------------------
-- 임시 컬럼 추가(iyear2)
alter table mytable1 add (iyear2 number default 0);

-- 임시 컬럼에 iyear 컬럼을 수치로 바꿔서 업데이트
update mytable1 set iyear2 = to_number(iyear);

-- 오리지널컬럼을 삭제
alter table mytable1 drop column iyear;

-- 임시 컬럼을 오리지널 이름으로 변경
alter table mytable1 rename column iyear2 to iyear;
-----------------------------------------------------------------------------
-- 국가별 집계;
select country_txt, count(*) as cnt from mytable1 
group by country_txt order by cnt desc;

desc tab;



create table country_summary
as 
select country_txt, count(*) as cnt 
from mytable1
group by country_txt
order by cnt desc;

select country_txt, cnt, RANK() over (order by cnt desc) as ranking
from country_summary;

create table country_summary_top_10
as 
select country_txt, cnt 
from (
    select country_txt, cnt, RANK() over (order by cnt desc) as ranking
    from country_summary
    )
where ranking <=10;

select * from country_summary_top_10;

select country_txt, cnt, RANK() over (order by cnt desc) as ranking
from country_summary_top_10;

-- 년도별 국가 집계
select country_txt, iyear, count(*) as cnt from mytable1 
group by country_txt, iyear order by country_txt desc, iyear asc;


-- 년도/월별 국가 집계
select country_txt, iyear, imonth, count(*) as cnt from mytable1 
group by country_txt, iyear, imonth order by country_txt desc, iyear asc, imonth asc;

-- 월별 국가 집계
select country_txt, imonth, count(*) as cnt from mytable1 
group by country_txt, imonth order by country_txt desc, imonth asc;

-- 분기별 국가 집계
select country_txt, iday, count(*) as cnt from mytable1 
group by country_txt, iday order by country_txt desc, iday asc;

-- 분기별 국가 집계
create table bungi
as
select country_txt,
-- case when then
case imonth
    when 1 then '일사분기'
    when 2 then '일사분기'
    when 3 then '일사분기'
    when 4 then '이사분기'
    when 5 then '이사분기'
    when 6 then '이사분기'
    when 7 then '삼사분기'
    when 8 then '삼사분기'
    when 9 then '삼사분기'
    when 10 then '사사분기'
    when 11 then '사사분기'
    when 12 then '사사분기'
end as result 
from mytable1;

select * from bungi;
drop table bungi;

-- 국가별, 분기별 집계
select country_txt, result, count(*) as cnt
from bungi
group by country_txt, result
order by COUNTRY_TXT, result;

-- table10 
create table table10
as 
select members.id, members.name, boards.content
from members inner join  boards
on members.id = boards.writer ;

-- table 20
create table table20
as
select m.name, b.subject, b.content
from members m inner join boards b
on m.id=b.writer 
and m.id in('hong')
order by m.id asc ;

select * from table20;
-- table30 
create table table30
as 
select m.name mname, p.name pname, od.qty, p.price, p.price * od.qty as amount 
from (( members m inner join orders o
on m.id=o.mid ) inner join orderdetails od 
on o.oid=od.oid ) inner join products p
on od.pnum = p.num
order by m.name desc ;



-- create user 아이디 identified by 비밀번호 account unlock ;
-- account unlock : 로그인 바로 가능하게 계정을 풀어 주겠다. ↔ lock 
create user madang identified by madang account unlock ;

-- alter user oraman default tablespace 테이블스페이스이름  ;
alter user oraman default tablespace users ;

-- connect 롤 : 접속할 수 있는 능력
-- resource 롤 : 테이블 생성할 수 있는 능력
grant connect, resource to oraman ;

-- 사용자가 제대로 생성되었는 지 확인하기
select username from dba_users order by username ;



 
CREATE TABLE atc_drugs ( 
     drug_id character varying(10), 
     atc_code character varying(10) 
 ); 
 
 

 
 CREATE TABLE drug_brands ( 
     drug_id character varying(10), 
     brand varchar2(100), 
     company varchar2(100) 
 ); 
 
 
28 CREATE TABLE drug_interactions ( 
29     drug_id1 character varying(10), 
30     drug_id2 character varying(10), 
31     name text, 
32     description text 
33 ); 
34 
 
35 
 
36 CREATE TABLE drugs ( 
37     drug_id character varying(10) NOT NULL, 
38     name text, 
39     description text 
40 ); 
41 
 
42 CREATE TABLE drug_dosages ( 
43     drug_id character varying(10) NOT NULL REFERENCES drugs(drug_id), 
44     form text, 
45     route text, 
46     strength text 
47 ); 
48 
 
  CREATE INDEX drug_dosages_id on drug_dosages(drug_id); 
 
 
 
 
52 CREATE VIEW drug_ints_vw AS 
53  SELECT di.drug_id1 AS drug_id, 
54     array_agg(di.drug_id2 ORDER BY di.drug_id2) AS drug_ids2, 
55     array_agg(di.name ORDER BY di.drug_id2) AS nmes, 
56     array_agg(di.description ORDER BY di.drug_id2) AS descriptions 
57    FROM (drug_interactions di 
58      JOIN drugs ON (((di.drug_id2)::text = (drugs.drug_id)::text))) 
59   GROUP BY di.drug_id1; 
60 
 
61 
 
62 CREATE TABLE drug_synonyms ( 
63     drug_id character varying(10), 
64     synonym text 
65 ); 
66 
 
67 
 
68 CREATE MATERIALIZED VIEW drugs_ftsearch AS 
69  SELECT drugs.drug_id, 
70     to_tsvector('english'::regconfig, concat(drugs.name, ' ', b.brands, ' ', s.synonyms)) AS ftext 
71    FROM ((drugs 
72      LEFT JOIN ( SELECT drug_brands.drug_id, 
73             string_agg(drug_brands.brand, ' '::text) AS brands 
74            FROM drug_brands 
75           GROUP BY drug_brands.drug_id) b USING (drug_id)) 
76      LEFT JOIN ( SELECT drug_synonyms.drug_id, 
77             string_agg(drug_synonyms.synonym, ' '::text) AS synonyms 
78            FROM drug_synonyms 
79           GROUP BY drug_synonyms.drug_id) s USING (drug_id)) 
80   WITH NO DATA; 
81 
 
82 
 
83 CREATE MATERIALIZED VIEW drugs_name_ftsearch AS 
84  SELECT drugs.drug_id, 
85     to_tsvector('english'::regconfig, drugs.name) AS name_ftext 
86    FROM drugs 
87   WITH NO DATA; 
88 
 
89 
 
90 CREATE VIEW drugs_vw AS 
91  SELECT drugs.drug_id, 
92     drugs.name, 
93     a.atc_codes, 
94     b.brands, 
95     s.synonyms, 
96     drugs.description 
97    FROM (((drugs 
98      LEFT JOIN ( SELECT atc_drugs.drug_id, 
99             array_agg(atc_drugs.atc_code) AS atc_codes 
100            FROM atc_drugs 
101           GROUP BY atc_drugs.drug_id) a USING (drug_id)) 
102      LEFT JOIN ( SELECT drug_brands.drug_id, 
103             array_agg(drug_brands.brand) AS brands 
104            FROM drug_brands 
105           GROUP BY drug_brands.drug_id) b USING (drug_id)) 
106      LEFT JOIN ( SELECT drug_synonyms.drug_id, 
107             array_agg(drug_synonyms.synonym) AS synonyms 
108            FROM drug_synonyms 
109           GROUP BY drug_synonyms.drug_id) s USING (drug_id)); 
110 
 
111 
 
112 ALTER TABLE ONLY drugs 
113     ADD CONSTRAINT drugs_pkey PRIMARY KEY (drug_id); 
114 
 
115 
 
116 CREATE INDEX atc_drugs_atc_code_idx ON atc_drugs USING btree (atc_code); 
117 
 
118 
 
119 CREATE INDEX atc_drugs_drug_id_idx ON atc_drugs USING btree (drug_id); 
120 
 
121 CREATE INDEX drug_brands_drug_id_idx ON drug_brands USING btree (drug_id); 
122 
 
123 
 
124 CREATE INDEX drug_interactions_drug_id1_idx ON drug_interactions USING btree (drug_id1); 
125 
 
126 
 
127 CREATE INDEX drug_interactions_drug_id2_idx ON drug_interactions USING hash (drug_id2); 
128 
 
129 
 
130 CREATE INDEX drug_synonyms_drug_id_idx ON drug_synonyms USING btree (drug_id); 
131 
 
132 CREATE INDEX drugs_ftsearch_ftext_idx ON drugs_ftsearch USING gin (ftext); 
133 
 
134 CREATE INDEX drugs_name_ftsearch_name_ftext_idx ON drugs_name_ftsearch USING gin (name_ftext); 
135 
 
136 ALTER TABLE ONLY atc_drugs 
137     ADD CONSTRAINT atc_drugs_drug_id_fkey FOREIGN KEY (drug_id) REFERENCES drugs(drug_id); 
138 
 
139 ALTER TABLE ONLY drug_brands 
140     ADD CONSTRAINT drug_brands_drug_id_fkey FOREIGN KEY (drug_id) REFERENCES drugs(drug_id); 
141 
 
142 
 
143 ALTER TABLE ONLY drug_interactions 
144     ADD CONSTRAINT drug_interactions_drug_id1_fkey FOREIGN KEY (drug_id1) REFERENCES drugs(drug_id); 
145 
 
146 
 
147 ALTER TABLE ONLY drug_synonyms 
148     ADD CONSTRAINT drug_synonyms_drug_id_fkey FOREIGN KEY (drug_id) REFERENCES drugs(drug_id); 
