select * from tab;
select * from review;
select * from seq;

delete from review;
drop table review purge;
drop sequence review_seq;

create table review(
    review_num number primary key -- 글번호
  , review_subject varchar2(50) -- 글제목
  , review_writer varchar2(20) -- 작성자
  , review_content varchar2(2000) -- 글내용
  , review_img varchar2(50) -- IMG 파일이름
  , review_pass varchar2(20) not null -- 글비번
  , review_readcount number -- 조회수
  , review_date date -- 등록일
);

-- review 테이블의 review_seq 시퀀스 생성
create sequence review_seq
	start with 1
	increment by 1
	nocache;