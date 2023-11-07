-- 테이블 복사
use sqldb;
CREATE TABLE buytbl2 (select * from buytbl);
select * from buytbl2;

-- group by 절
select userID , amount from buytbl order by userid;
select userID , sum(amount) from buytbl group by userid;

select userid as '사용자 아이디' , sum(amount) as '총 구매 개수'
from buytbl group by userid;

select userid as '사용자 아이디' , sum(price * amount) as '총 구매액'
from buytbl group by userid;

-- 집계함수
select avg(amount) as '평균 구매 개수' from buytbl;

select userid , avg(amount) as '평균 구매 개수' from buytbl group by userid;

select name , max(height) , min(height) from usertbl group by name;

select name , height
	from usertbl
    where height = (select max(height) from usertbl)
    or height = (select min(height) from usertbl);

select count(mobile1) as '휴대폰이 있는 사용자' from usertbl;