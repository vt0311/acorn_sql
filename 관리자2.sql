create user oraman identified by oracle account unlock ;

alter user oraman default tablespace users ;

-- connect �� : ������ �� �ִ� �ɷ�
-- resource �� : ���̺� ������ �� �ִ� �ɷ�
grant connect, resource to oraman ;

create user gomdori identified by oracle account unlock ;

alter user gomdori default tablespace users ;

grant connect, resource to gomdori ;