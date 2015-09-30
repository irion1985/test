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
tr_birth varchar2(40),
tr_gender varchar2(40),
tr_height varchar2(40),
tr_weight varchar2(40),
tr_jongmok varchar2(40),
tr_exp varchar2(40),
tr_special varchar2(40),
tr_jasosul varchar2(40),
tr_profile varchar2(40)
);

insert into trainer(tr_num,tr_name,tr_ename,tr_birth,tr_gender,tr_height)
			 values( 1007 , '로사', 'Rosa', '25세', '여', '170')
			 
			 
select tr_num,tr_name,tr_ename,tr_birth,tr_gender,tr_height from trainer where tr_name= '레드';