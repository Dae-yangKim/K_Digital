-- join (sql에서 가장 많이 쓴다)

select * from buytbl
	join usertbl
		on buytbl.userID = usertbl.userID;

select buytbl.userID , usertbl.name , buytbl.prodName , usertbl.addr ,
concat(usertbl.mobile1 , usertbl.mobile2) as "연락처"
from buytbl
inner join usertbl
on buytbl.userID = usertbl.userID
order by buytbl.num;

select B.userID , B.prodName , U.addr , concat(U.mobile1 , U.mobile2) as '연락처'
from buytbl as B
inner join usertbl as U
on B.userID = U.userID
order by B.num;

select B.userID , B.prodName , U.addr , concat(U.mobile1 , U.mobile2) as '연락처'
from buytbl as B
inner join usertbl as U
on B.userID = U.userID
where B.userID = 'JYP';

select U.userID , U.name , B.prodName , U.addr , concat(U.mobile1 , U.mobile2) as '연락처'
from usertbl as U
inner join buytbl as B
on U.userID = B.userID
where B.userID = 'JYP';

select distinct U.userID , U.name , U.addr
from usertbl U
inner join buytbl B
on U.userID = B.userID
order by U.userID;

select U.userID , U.name , U.addr
from usertbl U
where exists
(
	select * from buytbl B
    where U.userID = B.userID
);

-- 실습4 (p.282)

create table stdTbl
(
	stdName varchar(10) not null primary key ,
    addr char(4) not null
);

create table clubTbl
(
	clubName varchar(10) not null primary key ,
    roomNo char(4) not null
);

create table stdclubTbl
(
	num int auto_increment not null primary key ,
    stdName varchar(10) not null ,
    clubName varchar(10) not null ,
    foreign key(stdName) references stdtbl(stdName) ,
    foreign key(clubName) references clubtbl(clubName)
);

insert into stdtbl values ('김범수' , '경남') , ('성시경' , '서울') , ('조용필' , '경기') ,
('은지원' , '경북') , ('바비킴' , '서울');
insert into clubtbl values ('수영' , '101호') , ('바둑' , '102호') , ('축구' , '103호') ,
('봉사' , '104호');
insert into stdclubtbl values (null , '김범수' , '바둑') , (null , '김범수' , '축구') , (null , '조용필' , '축구') ,
(null , '은지원' , '축구') , (null , '은지원' , '봉사') , (null , '바비킴' , '봉사');

select S.stdName , S.addr , C.clubName , C.roomNo from stdtbl as S
inner join stdclubtbl as SC
on S.stdName = SC.stdName
inner join clubtbl as C
on SC.clubName = C.clubName
order by S.stdName;

select C.clubName , C.roomNo , S.stdName , S.addr
from stdtbl S
inner join stdclubtbl SC
on SC.stdName = S.stdName
inner join clubtbl C
on SC.clubName = C.clubName
order by C.clubName;

-- 실습 5 (p.286)
select S.stdName , S.addr , C.clubName , C.roomNo from stdtbl as S
left outer join stdclubtbl as SC
on S.stdName = SC.stdName
left outer join clubtbl as C
on SC.clubName = C.clubName
order by S.stdName;

select C.clubName , C.roomNo , S.stdName , S.addr
from stdtbl S
left outer join stdclubtbl SC
on SC.stdName = S.stdName
right outer join clubtbl C
on SC.clubName = C.clubName
order by C.clubName;

-- 두 결과 합치기
select S.stdName , S.addr , C.clubName , C.roomNo
from stdtbl S
left outer join stdclubtbl SC
on S.stdName = SC.stdName
left outer join clubtbl C
on SC.clubName = C.clubName
union
select C.clubName , C.roomNo , S.stdName , S.addr
from stdtbl S
left outer join stdclubtbl SC
on SC.stdName = S.stdName
right outer join clubtbl C
on SC.clubName = C.clubName;

-- 실습 6 (p.291)
create table empTbl
(
	emp char(3) , 
    manager char(3) , 
	empTel varchar(8)
);

insert into empTbl values('나사장' , null , '0000');
insert into empTbl values('김재무' , '나사장' , '2222');
insert into empTbl values('김부장' , '김재무' , '2222-1');
insert into empTbl values('이부장' , '김재무' , '2222-2');
insert into empTbl values('우대리' , '이부장' , '2222-2-1');
insert into empTbl values('지사원' , '이부장' , '2222-2-2');
insert into empTbl values('이영업' , '나사장' , '1111');
insert into empTbl values('한과장' , '이영업' , '1111-1');
insert into empTbl values('최정보' , '나사장' , '3333');
insert into empTbl values('윤차장' , '최정보' , '3333-1');
insert into empTbl values('이주임' , '윤차장' , '3333-1-1');

-- self join

select A.emp as '부하직원' , B.emp as '직속상관' , B.empTel as '직속상관연락처'
from empTbl A
inner join empTbl B
on A.manager = B.emp
where A.emp = '우대리';