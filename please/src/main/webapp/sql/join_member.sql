select * from tab;
select * from join_member;
select * from seq;
select * from join_member where join_id='test' and join_state='1'
insert into join_member (join_id, join_pass) values admin, admin;


select join_id from join_member where join_name='신동혜' and join_passq='유년친구' and join_passa='내친구';
delete from join_member where join_id='aaaaaa';
delete from join_member;
drop table join_member purge;
drop sequence join_member_seq;

-- 탈퇴하게되면 스테이트값 1로 변경, 그리고 탈퇴한 회원의 정보를 저장할 탈퇴테이블 만들어볼것
create table join_member(
    join_id varchar2(20) primary key -- 회원아이디
  , join_pass varchar2(20) not null -- 회원비번
  , join_passq varchar2(50) not null -- 비번확인질문
  , join_passa varchar2(50) not null -- 비번확인답변
  , join_name varchar2(50) not null -- 회원이름
  , join_gender varchar2(20) not null -- 성별
  , join_addr1 varchar2(100) not null -- 주소
  , join_addr2 varchar2(100) not null -- 나머지 주소
  , join_post varchar2(10) not null -- 우편번호
  , join_phone1 varchar2(20) not null -- 휴대전화번호1
  , join_phone2 varchar2(20) not null -- 휴대전화번호2
  , join_phone3 varchar2(20) not null -- 휴대전화번호3
  , join_email1 varchar2(100) not null -- 이메일 주소1
  , join_email2 varchar2(100) not null -- 이메일 주소2
  , join_date date -- 가입 날짜
  , join_state number(10) -- 가입회원 0, 탈퇴회원 1
  , join_delcont varchar2(4000) -- 탈퇴 사유
  , join_deldate date -- 탈퇴 날짜
  , join_know varchar2(50) not null -- 어떻게알고오셨나요?
  , join_agree varchar2(10) not null -- 이용약관 동의
  , join_infoagree varchar2(10) not null -- 개인정보수집 및 이용 동의
);

-- join_member 테이블의 join_member_seq 시퀀스 생성
create sequence join_member_seq
	start with 1
	increment by 1
	nocache;

 
