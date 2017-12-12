create table board (  
    write_no number(8,0),
  write_subject varchar2(80),
  write_writer varchar2(20),
  write_contents varchar2(1000)
);

create table board (  
  b_no number(8,0) primary key,
  b_title varchar2(150),
  b_writer varchar2(30),
  b_contents varchar2(1000),
  reg_date date
);

set autocommit

SELECT @@AUTOCOMMIT; 


create SEQUENCE board_no_seq 
start with 1
increment by 1
maxvalue 99999
nocycle;

select * from board;

insert into board values(board_no_seq.nextval, '웹툰작가', '노블리스', '라이의 위기', sysdate);