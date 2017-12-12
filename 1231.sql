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
   
   ALTER TABLE DRUGPRESC2002 MODIFY(�÷��� ������Ÿ��(������ũ��));

select * from drug_safety;

   DROP TABLE DRUG_SAFETY;
   
select * from DRUGPRESC2002;

select * from members order by salary  ;

select * from members ;

-- �ǽ��� ������ �߰��ϱ�
--begin
--	for i in 1..30 loop
--		insert into Boards(no, subject, writer, password, content, readhit, regdate)
--		values(myboard.nextval, '����', 'hong', '1234', '����', 0, sysdate);		
--	end loop;
--end;
--/
--update boards set writer='kim' where mod( no, 3 ) = 0 ;
--update boards set writer='park' where mod( no, 3 ) = 1 ;
--commit ;

-- begin
--	for i in 1..300 loop
--		insert into members(id,name,password,salary,hiredate,gender,hobby,job,zipcode,address1,address2,mpoint)
--		values('hong' || i ,'ȫ�浿','1234',100,sysdate,'����','�籸','�л�','123-456','����� ��걸','������',10);
--	end loop;
--end;
--/

-- begin
--	for i in 1..300 loop
--		insert into products(num, name, company, image, stock, price, category, contents, point, inputdate)
--		values(seqprod.nextval, '�Һ���', '����', 'soboru01.jpg', 100, 1000, 'bread', '���־��', 10, sysdate );		
--	end loop;
--end;
--/

--ctas ���

create table table1 as 
select members.id, members.name, boards.content
from members inner join  boards
on members.id = boards.writer ;

-- ������ ������ ȸ������ �̸��� �Ի������� CTAS ������� ����ÿ�.
create table table2 as 
select name, hiredate from members 
where gender = '����';

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
-- �ӽ� �÷� �߰�(iyear2)
alter table mytable1 add (iyear2 number default 0);

-- �ӽ� �÷��� iyear �÷��� ��ġ�� �ٲ㼭 ������Ʈ
update mytable1 set iyear2 = to_number(iyear);

-- ���������÷��� ����
alter table mytable1 drop column iyear;

-- �ӽ� �÷��� �������� �̸����� ����
alter table mytable1 rename column iyear2 to iyear;
------------------------------------------------------------------
-- �ӽ� �÷� �߰�(imonth2)
alter table mytable1 add (imonth2 number default 0);

-- �ӽ� �÷��� imonth �÷��� ��ġ�� �ٲ㼭 ������Ʈ
update mytable1 set imonth2 = to_number(imonth);

-- ���������÷��� ����
alter table mytable1 drop column imonth;

-- �ӽ� �÷��� �������� �̸����� ����
alter table mytable1 rename column imonth2 to imonth;
--------------------------------------------------------------------------
-- �ӽ� �÷� �߰�(iyear2)
alter table mytable1 add (iyear2 number default 0);

-- �ӽ� �÷��� iyear �÷��� ��ġ�� �ٲ㼭 ������Ʈ
update mytable1 set iyear2 = to_number(iyear);

-- ���������÷��� ����
alter table mytable1 drop column iyear;

-- �ӽ� �÷��� �������� �̸����� ����
alter table mytable1 rename column iyear2 to iyear;
-----------------------------------------------------------------------------
-- ������ ����;
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

-- �⵵�� ���� ����
select country_txt, iyear, count(*) as cnt from mytable1 
group by country_txt, iyear order by country_txt desc, iyear asc;


-- �⵵/���� ���� ����
select country_txt, iyear, imonth, count(*) as cnt from mytable1 
group by country_txt, iyear, imonth order by country_txt desc, iyear asc, imonth asc;

-- ���� ���� ����
select country_txt, imonth, count(*) as cnt from mytable1 
group by country_txt, imonth order by country_txt desc, imonth asc;

-- �б⺰ ���� ����
select country_txt, iday, count(*) as cnt from mytable1 
group by country_txt, iday order by country_txt desc, iday asc;

-- �б⺰ ���� ����
create table bungi
as
select country_txt,
-- case when then
case imonth
    when 1 then '�ϻ�б�'
    when 2 then '�ϻ�б�'
    when 3 then '�ϻ�б�'
    when 4 then '�̻�б�'
    when 5 then '�̻�б�'
    when 6 then '�̻�б�'
    when 7 then '���б�'
    when 8 then '���б�'
    when 9 then '���б�'
    when 10 then '���б�'
    when 11 then '���б�'
    when 12 then '���б�'
end as result 
from mytable1;

select * from bungi;
drop table bungi;

-- ������, �б⺰ ����
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



-- create user ���̵� identified by ��й�ȣ account unlock ;
-- account unlock : �α��� �ٷ� �����ϰ� ������ Ǯ�� �ְڴ�. �� lock 
create user madang identified by madang account unlock ;

-- alter user oraman default tablespace ���̺����̽��̸�  ;
alter user oraman default tablespace users ;

-- connect �� : ������ �� �ִ� �ɷ�
-- resource �� : ���̺� ������ �� �ִ� �ɷ�
grant connect, resource to oraman ;

-- ����ڰ� ����� �����Ǿ��� �� Ȯ���ϱ�
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
