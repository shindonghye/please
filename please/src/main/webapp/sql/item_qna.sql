select * from tab;
select * from item_qna;
select * from seq;

delete from item_qna;
drop table item_qna purge;
drop sequence item_qna_seq;

create table item_qna(
	item_num number primary key -- 글번호
  , item_subject varchar2(50) -- 글제목
  , item_writer varchar2(20) -- 작성자
  , item_email varchar2(100) -- 이메일 주소
  , item_content varchar2(2000) -- 글내용
  , item_pass varchar2(20) not null -- 글비번
  , item_img varchar2(50) -- IMG 파일이름
  , item_overlap varchar2(20) -- 중복방지
  , item_infoagree varchar2(10) not null -- 개인정보수집 및 이용 동의
  -- 외래키설정 : item_writer(부모키)가
  -- join_member 테이블의 join_id(자식키)를 참조하겠음.
  , CONSTRAINT fk_item_id FOREIGN KEY(item_writer)
      REFERENCES join_member(join_id) on delete cascade
);

-- on delete cascade   
-- (부모 레코드 삭제시, 자식 레코드도 삭제)

-- on delete set null
-- (부모 레코드 삭제시, 자식 레코드는 NULL값으로 채움)


-- item_qna 테이블의 item_qna_seq 시퀀스 생성
create sequence item_qna_seq
	start with 1
	increment by 1
	nocache;