update funmate_parent set ptel2='7777', ptel3='1111' ;


create sequence fm_p_pno_seq4
start with 2
increment by 1
maxvalue 200
nocycle;

select fm_p_pno_seq3.currval from dual;

select fm_p_pno_seq3.nextval from dual;

select fm_p_pno_seq4.currval from dual;
