-- 실습 p.243 ~ p.247

-- 실습 1
use sqldb;

-- 변수의 선언
set @myVar1 = 5;
set @myVar2 = 3;
set @myVar3 = 4.25;
set @myVar4 = '가수 이름==> ';

select @myVar1;
select @myVar2 + @myVar3;

select @myVar4 , name from usertbl where height > 180;

-- limit에는 원칙적으로 변수로 선언 불가능 , but  prepare , execute문을 사용해서 변수 활용으로 가능
set @myVar1 = 3;
PREPARE myQuery
	from 'select name , height from usertbl order by height limit ?';
execute myQuery using @myVar1;
-- prepare , execute 를 사용해서 위처럼 활용이 가능하다.

-- 데이터 형식 변환 함수

select avg(amount) as '평균 구매 개수' from buytbl;

select cast(avg(amount) as SIGNED INTEGER) as '평균 구매 개수' from buytbl;