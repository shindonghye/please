select * from consult;

select * from consult where con_re_ref=4 and con_re_lev=1


update consult set
con_ron='X'
where con_no=4
drop sequence consult_seq;
select count(*) from consult where con_re_Ref=1 and con_re_lev=1
select count(*) from consult where con_re_lev=0
select * from consult where con_re_lev=0 order by con_no desc
delete from consult where con_no=7
delete from consult
select * from(
			select rownum rnum, con_no, con_subject, con_writer,
				   con_ron, con_date, con_content, con_re_ref, con_re_lev
			from(
			select * from consult where con_re_lev=0 order by con_no desc)) 
	   			where rnum >= ((1-1) * 10+1) and
	   			      rnum <= (1 * 10)


select * from consult where con_re_ref=1 and con_re_lev=1

join_id=#{join_id} and join_pass=#{join_pass} and join_state=0
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
