----------------------- Oracle test
------------------ member

select * from member




------------------ Trainer
select * from trainer

drop table trainer

create table trainer(
tr_num int primary key,
tr_name varchar2(40),
tr_ename varchar2(40),
tr_birth varchar2(30),
tr_gender varchar2(10),
tr_height varchar2(10),
tr_weight varchar2(10),
tr_jongmok varchar2(80),
tr_exp varchar2(80),
tr_special varchar2(80),
tr_jasosul varchar2(200),
tr_profile varchar2(200),
tr_img clob
);
insert into trainer(tr_num,tr_name,tr_ename,tr_birth,tr_gender,tr_height)
values( 1000, '레드'  ,    'Red'  ,    '16세' ,    '남'  ,   '184' )

insert into trainer(tr_num,tr_name,tr_ename,tr_birth,tr_gender,tr_height)
			 values( 1007 , '로사', 'Rosa', '25세', '여', '170')
			 
			 
select tr_num,tr_name,tr_ename,tr_birth,tr_gender,tr_height from trainer where tr_name= '레드';

create sequence 


--컬럼추가
alter table Trainer add(img blob);

update trainer set tr_img= where tr_num = 1000;






---------------------- img
drop table img

create table img(
 name varchar2(40),
 pw varchar2(40),
 up clob,
 subject varchar2(40),
 text varchar2(40)
);

select * from img

insert into img
	(up) 
	values
	('asdf')