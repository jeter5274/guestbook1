--테이블, 시퀀스 삭제
drop table guestbook;
drop sequence seq_guestbook_no;

--테이블 생성
create table guestbook(
    no number,
    name varchar2(80),
    password varchar2(20),
    content varchar2(2000),
    reg_date date,
    primary key (no)
);

--시퀀스 생성
create sequence seq_guestbook_no
increment by 1
start with 1;

-- 데이터 삽입
insert into guestbook values (seq_guestbook_no.nextval, '관리자', '1234', '테스트입니다', sysdate);
insert into guestbook values (seq_guestbook_no.nextval, '아무개', '1234', '테스트입니다2', sysdate);

-- 커밋
commit;

-- 셀렉트 all
select  no,
        name,
        password,
        content,
        reg_date
from guestbook;

--삭제
delete guestbook
where no = 2;