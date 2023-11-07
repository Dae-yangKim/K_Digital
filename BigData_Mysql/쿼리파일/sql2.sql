use sqldb;
SELECT * from usertbl where name = '김경호';

select userID , name from usertbl
	where birthYear >= 1979 and height >= 182;

select name , height from usertbl where height between 180 and 183;
select name , addr from usertbl where addr in ("경남" , "전남" , "경북");
select name from usertbl where name like '김%'; -- _김% 이러는 경우 김 앞에는 하나 아무거나 오고 뒤에는 아무거나 와도 된다는 표시이다.
select name , height from usertbl where height > 177;
select name , height from usertbl
	 where height > (select height from usertbl where name = '김경호'); -- 김경호씨의 키보다 키가 큰 사람은?
     
select name , height from usertbl
	where height >= any (select height from usertbl where addr = '경남');
    
select name , height from usertbl order by height; -- order by = 정렬이다 . asc = 오름차순 , desc = 내림차순
select name , height from usertbl order by height desc , name; -- 뒤에 추가로 해서 정렬 기준을 몇개씩 가능

select distinct addr from usertbl; -- distinct는 중복된 것을 1개씩만 보여주는 명령문이다.

use employees;
select emp_no , hire_date from employees
	order by hire_date
    limit 5; -- pandas의 head() 같은 느낌 , limit 7 , 14 이런 식으로 시작 , 끝 설정 가능
