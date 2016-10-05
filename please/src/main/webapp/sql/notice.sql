select * from tab;
select * from notice;
select * from seq;

delete from notice;
drop table notice purge;
drop sequence notice_seq;

create table notice(
    notice_num number primary key -- 글번호
  , notice_subject varchar2(50) -- 글제목
  , notice_content varchar2(2000) -- 글내용
  , notice_readcount number -- 조회수
  , notice_date date -- 등록일
);

-- notice 테이블의 notice_seq 시퀀스 생성
create sequence notice_seq
	start with 1
	increment by 1
	nocache;