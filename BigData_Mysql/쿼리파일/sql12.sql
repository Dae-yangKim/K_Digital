-- index

use sqldb;
create table tbl2
(
	a int primary key ,
    b int unique ,
    c int unique ,
    d int
);
show index from tbl2;

create table tbl3
(
	a int unique ,
    b int unique ,
    c int unique ,
    d int
);
show index from tbl3;

create table tbl4
(
	a int unique not null ,
    b int unique ,
    c int unique ,
    d int
);
show index from tbl4;

create table tbl5
(
	a int unique not null ,
    b int unique ,
    c int unique ,
    d int primary key
);
show index from tbl5;

create database if not exists testdb;
use testdb;
drop table if exists usertbl;
create table usertbl
(
	userID char(8) not null primary key ,
    name varchar(10) not null ,
    birthYear int not null ,
    addr nchar(2) not null
);

insert into usertbl values('LSG' , '이승기' , 1987 , '서울');
insert into usertbl values('KBS' , '김범수' , 1979 , '경남');
insert into usertbl values('KKH' , '김경호' , 1971 , '전남');
insert into usertbl values('JYP' , '조용필' , 1950 , '경기');
insert into usertbl values('SSK' , '성시경' , 1979 , '서울');
select * from usertbl;

alter table usertbl drop primary key;
alter table usertbl
	add constraint pk_name primary key(name);
select * from usertbl;

create database if not exists testdb;
use testdb;
drop table if exists clustertbl;
create table clustertbl
(
	userID char(8) ,
    name varchar(10)
);

insert into clustertbl values("LSG" , "이승기");
insert into clustertbl values("KBS" , "김범수");
insert into clustertbl values("KKH" , "김경호");
insert into clustertbl values("JYP" , "조용필");
insert into clustertbl values("SSK" , "성시경");
insert into clustertbl values("LJB" , "임재범");
insert into clustertbl values("YJS" , "윤종신");
insert into clustertbl values("EJW" , "은지원");
insert into clustertbl values("JKW" , "조관우");
insert into clustertbl values("BBK" , "바비킴");

select * from clustertbl;

alter table clustertbl
	add constraint PK_clustertbl_userID
		primary key (userID);
        
-- 실습 2 (p.397)

create database if not exists testdb;
use testdb;
drop table if exists mixedtbl;
create table mixedtbl
(
	userID char(8) not null ,
    name varchar(10) not null ,
    addr char(2)
);

insert into mixedtbl values("LSG" , "이승기" , "서울");
insert into mixedtbl values("KBS" , "김범수" , "경남");
insert into mixedtbl values("KKH" , "김경호" , "전남");
insert into mixedtbl values("JYP" , "조용필" , "경기");
insert into mixedtbl values("SSK" , "성시경" , "서울");
insert into mixedtbl values("LJB" , "임재범" , "서울");
insert into mixedtbl values("YJS" , "윤종신" , "경남");
insert into mixedtbl values("EJW" , "은지원" , "경북");
insert into mixedtbl values("JKW" , "조관우" , "경기");
insert into mixedtbl values("BBK" , "바비킴" , "서울");

alter table mixedtbl
	add constraint PK_mixedtbl_userID
		primary key (userID);

alter table mixedtbl
	add constraint UK_mixedtbl_name
		unique (name);
        
show index from mixedtbl;