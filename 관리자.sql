create user madang identified by madang account unlock ;

-- alter user oraman default tablespace 테이블스페이스이름  ;
alter user madang default tablespace users ;

-- connect 롤 : 접속할 수 있는 능력
-- resource 롤 : 테이블 생성할 수 있는 능력
grant connect, resource to madang ;

-- 사용자가 제대로 생성되었는 지 확인하기
select username from dba_users order by username ;