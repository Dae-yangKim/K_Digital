create database tabledb;
-- drop database tabledb;

use tabledb;
drop table if exists usertbl;
create table usertbl
(
	userID char(8) not null primary key ,
    name varchar(10) not null ,
    birthYear int not null ,
    addr char(2) not null ,
    mobile1 char(3) null ,
    mobile2 char(8) null ,
    height smallint null ,
    mDate date null
);

drop table if exists buytbl;
create table `buytbl`
(
	`num` int not null auto_increment ,
    `userid` char(8) not null ,
    `prodName` char(6) not null ,
    `price` int not null ,
    `amount` smallint not null ,
    PRIMARY KEY (`num`) ,
    FOREIGN KEY (`userid`) REFERENCES usertbl(userID)
);

-- 테이블 압축
create database if not exists compressDB;
use compressDB;
drop table if exists normalTBL;
create table normalTBL
(
	emp_no int ,
    first_name varchar(14)
);
drop table if exists compressTBL;
create table compressTBL
(
	emp_no int ,
    first_name varchar(14)
) row_format = compressed;

-- 테이블에 데이터를 30만건 정도 입력
insert into normalTBL 
	select emp_no , first_name from employees.employees;
insert into compressTBL
	select emp_no ,first_name from employees.employees;

show table status from compressDB;
drop database if exists compressDB;