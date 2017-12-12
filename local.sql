select empno, ename, job, mgr, hiredate, sal *13+nvl(comm, 0) from emp order by sal * 13 +nvl(comm, 0) desc;

select * from 고객 where 적립금 != 1500;

select * from emp where ename like '__L%';

select count(job) from emp;
select distinct job from emp ;

select getdate from dual;

 SELECT CONVERT(VARCHAR, GETDATE(), 112);
 
 select * from emp where mgr is null;
 
 select * from emp where comm is not null;
 
 select ename || ':' || job from emp;
 

select empno, ename, job, hiredate, sal, comm, deptno from emp
order by comm desc;

select empno, ename, job, hiredate, sal, comm, deptno from emp
order by deptno;

select empno, ename, job, hiredate, sal, comm, deptno from emp
order by deptno, sal;

select empno, ename, job, hiredate, sal, comm, deptno from emp
order by deptno desc, sal;

create table funmate_parent (
    pno number(8,0),
    pname varchar2(30),
    ptel1 char(4),
    ptel2 char(4),
    ptel3 char(4),
    paddr1 char(6),
    paddr2 varchar2(90),
    paddr3 varchar2(90),
    pagree1 char(1),
    ptype number(1,0)
);

-- 2 3 5 6 8 9 11
insert into funmate_parent (pno, pname, ptel1, ptel2, ptel3, paddr1, paddr2, paddr3, pagree1, ptype) 
values (fm_p_pno_seq4.nextval, '노', 010, 5555, 7777, 05555, '서울 양천구', '아파트', 'y', 1);   

select * from funmate_parent;

delete funmate_parent where ptel3='7777'

select write_no, write_subject, write_writer from board1;
select * from board1;

drop table board;

create table board (
  write_no number(8,0),
  write_subject varchar2(80),
  write_writer varchar2(20),
  write_contents varchar2(1000),
   write_date varchar2(100)
);

create table board1 (
  bno number(5) primary key,
  bwriter varchar(90),
  btitle varchar(50),
  
  bcontents varchar2(3000),
  bdate varchar2(30)
);

create sequence board_write_no_seq
start with 1
increment by 1
maxvalue 99999
nocycle

insert into board1 values(Board1_bno_seq.nextval, '웹툰작가', '노블리스', '라이의 위기',
'2017-09-29 17:07:05')


insert into board values(board_write_no_seq.nextval, '웹툰작가', '노블리스', '라이의 위기', '2017-09-29 17:07:05')






