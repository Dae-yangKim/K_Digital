use sqldb;
select * from usertbl;

show index from usertbl;
show table status like 'usertbl';
create index idx_usertbl_addr on usertbl(addr);

show index from usertbl;
analyze table usertbl;
show table status like 'usertbl';
show index from usertbl;

create unique index idx_usertbl_name on usertbl(name);
show index from usertbl;

insert into usertbl values('GPS' , '김범수' , 1983 , '미국' , null , null , 162 , null); -- 해당 쿼리를 실행 할 경우 에러 이유로는 , name이 인덱스 설정이 되어있어서 중복 불가능이다.

select * from usertbl;
drop index idx_usertbl_name on usertbl; -- drop으로 index 삭제 가능
select * from usertbl where name = '윤종신' and birthYear = 1969;

-- 실습 4 (p.409)
create database if not exists indexdb;
use indexdb;
select count(*) from employees.employees;

create table emp select * from employees.employees order by rand();
create table emp_c select * from employees.employees order by rand();
create table emp_Se select * from employees.employees order by rand();

select * from emp limit 5;
select * from emp_c limit 5;
select * from emp_Se limit 5;

show table status;

alter table emp_c add primary key(emp_no);
alter table emp_Se add index idx_emp_no (emp_no);

select * from emp limit 5;
select * from emp_c limit 5;
select * from emp_Se limit 5;

analyze table emp , emp_c , emp_Se;

show index from emp;
show index from emp_c;
show index from emp_Se;
show table status;

use indexdb;

show global status like 'Innodb_pages_read';
select * from emp where emp_no = 100000;
show global status like 'Innodb_pages_read';

show global status like 'Innodb_pages_read';
select * from emp_c where emp_no = 100000;
show global status like 'Innodb_pages_read';	

show global status like 'Innodb_pages_read';
select * from emp_Se where emp_no = 100000;
show global status like 'Innodb_pages_read';

show global status like 'Innodb_pages_read';
select * from emp where emp_no < 11000;
show global status like 'Innodb_pages_read';

show global status like 'Innodb_pages_read';
select * from emp_c where emp_no < 11000;
show global status like 'Innodb_pages_read';

show global status like 'Innodb_pages_read';
select * from emp_c where emp_no < 500000 limit 1000000;
show global status like 'Innodb_pages_read';

show global status like 'Innodb_pages_read';
select * from emp_Se where emp_no < 11000;
show global status like 'Innodb_pages_read';

SELECT * FROM emp_c where emp_no = 100000;

show global status like 'Innodb_pages_read';
select * from emp_c where emp_no * 1 = 100000;
show global status like 'Innodb_pages_read';

alter table emp add index idx_gender (gender);
analyze table emp;
show index from emp;

select * from emp where gender = 'M' limit 500000;

select * from emp ignore index (idx_gender) where gender = 'M' limit 500000;