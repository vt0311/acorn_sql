create user oraman identified by oracle account unlock ;

alter user oraman default tablespace users ;

-- connect 롤 : 접속할 수 있는 능력
-- resource 롤 : 테이블 생성할 수 있는 능력
grant connect, resource to oraman ;

create user gomdori identified by oracle account unlock ;

alter user gomdori default tablespace users ;

grant connect, resource to gomdori ;