drop table item purge;
select * from item;
delete from item;
drop sequence item_seq;

create table item(
	item_seq number primary key -- 상품번호
  , item_date date -- 상품 등록 날짜
  , item_name varchar2(50) -- 상품명
  , item_value number(10)
  , item_color1 varchar2(10)
  , item_color2 varchar2(10)
  , item_color3 varchar2(10)
  , item_color4 varchar2(10)
  , item_color5 varchar2(10)
  , item_size1 varchar2(10)
  , item_size2 varchar2(10)
  , item_size3 varchar2(10)
  , item_amount number(10) 
  , item_image varchar2(50) -- IMG 파일이름
  , item_cont varchar2(2000) -- 글내용
  , item_relative varchar2(50) -- 관련 상품명
);

create sequence item_seq
	start with 1
	increment by 1
	nocache;
	 
