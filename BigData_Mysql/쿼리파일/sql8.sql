-- 피벗의 구현 (p.269)

create table pivotTest
(
	uName char(3) , season char(2) , amount int
);

insert into pivotTest values ('김범수' , '겨울' , 10) , ('윤종신' , '여름' , 15) , ('김범수' , '가을' , 25) , ('김범수' , '봄' , 3) ,
('김범수' , '봄' , 37) , ('윤종신' , '겨울' , 40) , ('김범수' , '여름' , 14) , ('김범수' , '겨울' , 22) , ('윤종신' , '여름' , 64);

select * from pivotTest;

select uName ,
sum(if(season = '봄' , amount , 0)) as '봄' ,
sum(if(season = '여름' , amount , 0)) as '여름' ,
sum(if(season = '가을' , amount , 0)) as '가을' ,
sum(if(season = '겨울' , amount , 0)) as '겨울' ,
sum(amount) as '합계' from pivotTest group by uName;

-- JSON 데이터
select JSON_OBJECT('name' , name , 'height' , height) as "JSON 값"
from usertbl
where height >= 180;

-- setting json data
set @json = '{ "usertbl" : 
	[
		{"name" : "임재범" , "height" : 182} ,
        {"name" : "이승기" , "height" : 182} ,
        {"name" : "성시경" , "height" : 186}
	]
}';

select JSON_SEARCH(@json , 'one' , '성시경') as JSON_SEARCH;
select JSON_EXTRACT(@json , '$.usertbl[2].name') as JSON_EXTRACT;
