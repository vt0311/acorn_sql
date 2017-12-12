drop SEQUENCE fm_p_pno_seq;
drop SEQUENCE fm_p_pno_seq2;

drop SEQUENCE fm_p_pno_seq3;

drop SEQUENCE fm_p_pno_seq4;

drop table 林巩;

drop table 绊按;

drop table 力前;

drop table 力炼诀眉;

drop table bonus;

drop table dept;

drop table emp;

drop table funmate_parent;

drop table salgrade;

drop table board;

drop table board1;

create table member (
 m_no number(4,0) primary key not null,
 m_nm varchar2(30), 
 -- m_birth varchar2(8),
 m_tel varchar2(15),
 m_email varchar2(50),
 reg_date date not null,
 del_yn number(1,0) not null
);

create SEQUENCE member_no_seq 
start with 1
increment by 1
maxvalue 99999
nocycle;

select * from member;