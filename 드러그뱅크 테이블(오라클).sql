
 
CREATE TABLE atc_drugs ( 
     drug_id character varying(10), 
     atc_code character varying(10) 
 ); 
 
 

 
 CREATE TABLE drug_brands ( 
     drug_id character varying(10), 
     brand varchar2(100), 
     company varchar2(100) 
 ); 
 
 
CREATE TABLE drug_interactions ( 
    drug_id1 character varying(10), 
     drug_id2 character varying(10), 
    name text, 
     description text 
 ); 

 
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