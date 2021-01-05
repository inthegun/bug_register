create table member(
	id varchar(30) not null, # 아이디
	password varchar(30) , #패스워드
	name varchar(30),	# 이름
	email varchar(30),	# 이메일
	phone varchar(30),	# 전화번호
	job varchar(30),	# 직업
	regdate varchar(30),  # 가입날짜
	primary key(id)
	
)engine = innodb default charset=utf8;

drop table member;

desc member

select * from member limit 100; 	# 100개 행만 선택해봄
select id,password from member where id ='test'

select count(*) from member; 		# 회원수

insert into member values('bug','1234','대충벌레','bigbug@naver.com','010-1234-5212','학생',now());