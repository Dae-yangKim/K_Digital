-- sotred procedure

use sqldb;
drop procedure if exists userProc1;
delimiter $$
create procedure userProc1(in userName varchar(10))
begin
	select * from usertbl where name = userName;
end $$
delimiter ;

call userProc1('조관우');

drop procedure if exists userProc2;
delimiter $$
create procedure userProc2
(
	in userBirth int ,
    in userHeight int
)
begin
	select * from usertbl
		where birthYear > userBirth and height > userHeight;
end $$
delimiter ;

call userProc2(1970 , 178);

-- sotred function

set global log_bin_trust_function_creators = 1;

drop function if exists userFunc;
delimiter $$
create function userFunc(value1 int , value2 int)
	returns int
begin
	return value1 + value2;
end $$
delimiter ;

select userFunc(100 , 233);

-- 실습 2 (p.455)

use sqldb;
drop function if exists getAgeFunc;
delimiter $$
create function getAgeFunc(bYear int)
	returns int
begin
	declare age int;
    set age = year(curdate()) - bYear;
    return age;
end $$
delimiter ;

select getAgeFunc(2002);

-- 변수에 반환값 저장
select getAgeFunc(1979) into @age1979;
select getAgeFunc(1997) into @age1997;
select concat('1997년과 1979년의 나이차 ==>' , (@age1979-@age1997));

-- Cursor

-- 실습 3 (p.458 ~ 461)
use sqldb;
drop procedure if exists cursorProc;
delimiter $$
create procedure cursorProc()
begin
	declare userHeight int;
    declare cnt int default 0;
    declare totalHeight int default 0;
    
    declare endOfRow boolean default flase;
    
    declare userCuror cursor for
		select height from usertbl;
	
    declare continue handler
		for not found set endOfRow = True;
	
    open userCuror;
    
    cursor_loop : Loop
		fetch userCuror into userHeight;
        
        if endOfRow then
			leave cursor_loop;
		end if;
        
        set cnt = cnt + 1;
        set totalHeight = totalHeight + userHeight;
		
	end loop cursor_loop;
    
    select cocnat('고객 키의 평균 ==> ' , (totalHeight / cnt));
    
    close userCuror;
end $$
delimiter ;

create database if not exists testDB;
use testDB;
create table if not exists testTBL
(
	id int ,
    txt varchar(10)
);

insert into testTBL values(1 , '레드벨벳');
insert into testTBL values(2 , '잇지');
insert into testTBL values(3 , '블랙핑크');

-- testTBL에 트리거 부착
drop trigger if exists testTrg;
delimiter //
create trigger testTrg
	after delete -- 삭제 후에 작동하도록 지정한다
    on testTBL -- 어떤 테이블에서 하는지
    for each row -- 각 행마다 적용
begin
	set @msg = '가수 그룹이 삭제됨';
end //
delimiter ;

set SQL_SAFE_UPDATES = 0;
set @msg = '';
insert into testTBL value(4 , '마마무');
select @msg;
update testTBL set txt = '블핑' where id = 3;
select @msg;
delete from testTBL where id = 4;
select @msg; -- 이때만 나온다 왜냐하면 삭제 되었기 때문임