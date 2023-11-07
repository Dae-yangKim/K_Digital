-- 실습 p.227~p.228

-- 실습4
use sqldb;
create table memberTBL (select userID , name , addr from usertbl limit3); -- 3건만 가져온다
alter table memberTBL
	add CONSTRAINT pk_memberTBL primary key (userID); -- PK 지정
select * from memberTBL;

insert ignore into memberTBL values('BBK' , '비비코' , '미국');
insert ignore into memberTBL values('SJH' , '서장훈' , '서울');
insert ignore into memberTBL values('HJY' , '현주엽' , '경기');

insert into memberTBL values('BBK' , '비비코' , '미국')
 on duplicate key update name = '비비코' , addr = '미국';
insert into memberTBL values('DJM' , '동짜몽' , '일본')
 on DUPLICATE KEY UPDATE name = '동짜몽' , addr = '일본';

select * from memberTBL;