create user madang identified by madang account unlock ;

-- alter user oraman default tablespace ���̺����̽��̸�  ;
alter user madang default tablespace users ;

-- connect �� : ������ �� �ִ� �ɷ�
-- resource �� : ���̺� ������ �� �ִ� �ɷ�
grant connect, resource to madang ;

-- ����ڰ� ����� �����Ǿ��� �� Ȯ���ϱ�
select username from dba_users order by username ;