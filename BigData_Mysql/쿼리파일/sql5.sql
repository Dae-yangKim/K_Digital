select userid as '사용자' , sum(price * amount) as '총 구매액'
from buytbl
group by userid;

-- CTE 사용
with abc(userid , total)
as
	(select userid , sum(price*amount)
    from buytbl group by userid)
    select * from abc order by total desc;

select userid as '사용자' , sum(price * amount) as '총구매액'
	from butTBL group by userid;

select addr , max(height) from userTBL group by addr;
with cte_userTBL(addr , maxHeight)
as
	(select addr , max(height) from userTBL group by addr)
select avg(maxHeight*1.0) as '각 지역별 최고키의 평균' from cte_userTBL;