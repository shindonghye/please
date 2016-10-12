select * from consult;

drop table consult purge;
create table consult (
	con_no number primary key, -- 글번호
	con_subject varchar2(100), -- 제목
	con_writer varchar2(100), -- 작성자
	con_ron varchar2(50), -- 답변여부
	con_date date, -- 작성일or답변일
	con_content varchar2(1000), -- 내용
	con_re_ref number(20), -- 부모글의 시퀀스
	con_re_lev number(20) -- 답변글의 깊이

);

create sequence consult_seq 
	start with 1
	increment by 1
	nocache;	
