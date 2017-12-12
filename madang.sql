create table books (
	bookid number(2) primary key,
	bookname varchar2(40),
	publisher varchar2(40),
	price  number(8) 
);

create table  customers (
	custid number(2) primary key,  
	name   varchar2(40),
	address  varchar2(50),
	phone  varchar2(20)
);

create table orders (
	orderid number(2) primary key,
	custid  number(2) REFERENCES customers(custid),
	bookid  number(2) REFERENCES books(bookid),
	saleprice number(8) ,
	orderdate DATE
);

-- books, customers, orders ������ ����
insert into books values(1, '�౸�� ����', '�½�����', 7000);
insert into books values(2, '�౸�ƴ� ����', '������', 13000);
insert into books values(3, '�౸�� ����', '���ѹ̵��', 22000);
insert into books values(4, '���� ���̺�', '���ѹ̵��', 35000);
insert into books values(5, '�ǰ� ����', '�½�����', 8000);
insert into books values(6, '���� �ܰ躰���', '�½�����', 6000);
insert into books values(7, '�߱��� �߾�', '�̻�̵��', 20000);
insert into books values(8, '�߱��� ��Ź��', '�̻�̵��', 13000);
insert into books values(9, '�ø��� �̾߱�', '�Ｚ��', 7500);
insert into books values(10, 'Olympic Champions', 'Pearson', 13000);

insert into customers values(1, '������', '���� ��ü��Ÿ', '000-5000-0001');
insert into customers values(2, '�迬��', '���ѹα� ����', '000-6000-0001');  
insert into customers values(3, '��̶�', '���ѹα� ������', '000-7000-0001');
insert into customers values(4, '�߽ż�', '�̱� Ŭ������', '000-8000-0001');
insert into customers values(5, '�ڼ���', '���ѹα� ����',  NULL);

-- �ֹ�(orders) ���̺��� å���� ���� �ǸŸ� ������
insert into orders values(1, 1, 1, 6000, to_date('2014-07-01','yyyy-mm-dd')); 
insert into orders values(2, 1, 3, 21000, to_date('2014-07-03','yyyy-mm-dd'));
insert into orders values(3, 2, 5, 8000, to_date('2014-07-03','yyyy-mm-dd')); 
insert into orders values(4, 3, 6, 6000, to_date('2014-07-04','yyyy-mm-dd')); 
insert into orders values(5, 4, 7, 20000, to_date('2014-07-05','yyyy-mm-dd'));
insert into orders values(6, 1, 2, 12000, to_date('2014-07-07','yyyy-mm-dd'));
insert into orders values(7, 4, 8, 13000, to_date( '2014-07-07','yyyy-mm-dd'));
insert into orders values(8, 3, 10, 12000, to_date('2014-07-08','yyyy-mm-dd')); 
insert into orders values(9, 2, 10, 7000, to_date('2014-07-09','yyyy-mm-dd')); 
insert into orders values(10, 3, 8, 13000, to_date('2014-07-10','yyyy-mm-dd'));

commit ;

create table MySale as
select customers.name, books.bookname, orders.saleprice
from ( customers inner join orders
        on customers.custid = orders.custid ) inner join books 
on orders.bookid = books.bookid

select * from MySale;