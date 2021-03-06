CREATE TABLE CONSUMER(
    con_id varchar2(15) primary key,
    con_name varchar2(15),
    con_pwd varchar2(20),
    con_pwd_ck varchar2(20),
    con_phon varchar2(14)
);

CREATE TABLE owner(
    ow_id varchar2(15) primary key,--媛�寃� �븘�씠�뵒
    ow_name varchar2(15),--媛�寃� �씠由�
    ow_pwd varchar2(20),
    ow_pwd_ck varchar2(20),
    ow_phon varchar2(14),
    ow_addr varchar2(50),--媛�寃� 二쇱냼
    ow_img varchar2(100) default 0
    );
    
create table menu(
	mn_owner varchar2(30), 
    mn_img varchar2(100),
	mn_name varchar2(30),
    mn_price number(10),
    mn_content varchar2(100)
);

create table reservation(
	rev_num number(10) primary key,
    rev_date varchar2(15),
    rev_time varchar2(15),
    rev_name varchar2(15),
    rev_id varchar2(15)
);

CREATE SEQUENCE rev_seq INCREMENT BY 1 START WITH 1 MINVALUE 1;

create table board(									-- 寃뚯떆�뙋
    bo_num 			number 					primary key, 		-- 湲�踰덊샇
    bo_name 		VARCHAR2(20),								-- �옉�꽦�옄
    bo_pass 		varchar2(20), 								-- 鍮꾨�踰덊샇
    bo_title 		varchar2(100), 								-- �젣紐�
    bo_content 		varchar2(1000), 							-- �궡�슜
    bo_date 		date 					default sysdate,	-- �옉�꽦�씪
    bo_readCount	number 					default 0			-- 議고쉶�닔
);


-- 議고쉶�닔
create sequence bo_seq 
start with 1
increment by 1;		


insert into board(bo_num,bo_name,bo_pass,bo_title,bo_content) values(
   bo_seq.nextval,'4321','4321','4321','4321'
);

select * from board;
drop table board;
drop sequence bo_seq;

select * from menu;
select * from owner;
select * from consumer;
select * from reservation;
select * from board;

delete reservation ;
delete menu ;
drop table consumer ;
drop table owner ;
drop table reservation ;

drop sequence rev_seq;drop table menu ;
delete owner ;
delete board ;
delete consumer ;

update owner set ow_img=0 where ow_id='111';