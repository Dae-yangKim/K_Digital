-- SQL programming

-- if else
drop procedure if exists ifProc;
delimiter $$
create procedure ifProc()
begin
	declare var1 int;
    set var1 = 100;
    
    if var1 = 100 then -- 조건 연산자 조심
		select "100입니다.";
	else
		select "100이 아닙니다.";
	end if;
end $$
delimiter ;
call ifProc();

-- case

drop procedure if exists ifProc3;
delimiter $$
create procedure ifProc3()
begin
	declare point int;
    declare credit char(1);
    set point = 77;
    
	if point >= 90 then
		set credit = 'A';
	elseif point >= 80 then
		set credit = 'B';
	elseif point >= 70 then
		set credit = 'C';
	elseif point >= 60 then
		set credit = 'D';
	else
		set credit = 'F';
	end if;
    
    select concat('취득점수==>' , point) , concat('학점==>' , credit);
end $$
delimiter ;

call ifProc3();

-- 실습 7 (p.300)

select userID , sum(price*amount) as "총구매액"
from buytbl
group by userID
order by sum(price*amount) desc;

select B.userID , U.name , sum(B.price * B.amount) as "총구매액"
from buytbl as B
inner join usertbl as U
on B.userID = U.userID
group by B.userID
order by sum(price*amount) desc;

select B.userID , U.name , sum(B.price * B.amount) as "총구매액"
from buytbl as B
right outer join usertbl as U
on B.userID = U.userID
group by B.userID , U.name
order by sum(price*amount) desc;

select U.userID , U.name , sum(B.price * B.amount) as "총구매액"
from buytbl as B
right outer join usertbl as U
on B.userID = U.userID
group by U.userID , U.name
order by sum(price*amount) desc;

-- while , iterate , leave
drop procedure if exists whileProc;
delimiter $$
create procedure whileProc()
begin
	declare i int;
    declare hap int;
    
    set i = 1;
    set hap = 0;
    
    while(i <= 100) do
		set hap = hap + i;
        set i = i + 1;
	end while;
    
    select hap;
end $$
delimiter ;

call whileProc();

drop procedure if exists vitaminProc;
delimiter $$
create procedure vitaminProc()
begin
	declare i int;
    declare hap int;
    
    set i = 3;
    set hap = 0;
    
	while(i <= 1000)do
		if i % 3 = 0 or i % 8 = 0 then
			set hap = hap + i;
		end if;
		set i = i + 1;
	end while;
	
    select hap;
end $$
delimiter ;

call vitaminProc();