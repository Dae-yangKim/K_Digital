drop database if exists GisDB;
create database GisDB;

use GisDB;
create table StreamTBL
(
	MapNumber char(10) ,
    StreamName char(20) ,
    Stream GEOMETRY
);

insert into StreamTBL value('330000001' , '한류천' , ST_GeomFromText('LINESTRING (-10 30 , -50 70 , 50 70)'));
insert into StreamTBL value('330000001' , '안양천' , ST_GeomFromText('LINESTRING (-50 -70 , 30 -10 , 70 -10)'));
insert into StreamTBL value('330000001' , '일산천' , ST_GeomFromText('LINESTRING (-70 50 , -30 -30 , 30 -60)'));

create table BuildingTBL
(
	MapNumber char(10) ,
    BuildingName char(20) ,
    Building GEOMETRY
);

insert into BuildingTBL value('330000005' , '하나은행' , ST_GeomFromText('POLYGON ((-10 50 , 10 30 ,-10 10 , -30 30 ,-10 50))'));
insert into BuildingTBL value('330000001' , '우리빌딩' , ST_GeomFromText('POLYGON ((-50 -70 , -40 -70 , -40 -80 , -50 -80 , -50 -70))'));
insert into BuildingTBL value('330000002' , '디티오피스텔' , ST_GeomFromText('POLYGON ((40 0 , 60 0 , 60 -20 , 40 -20 , 40 0))'));

select * from StreamTBL;

select * from BuildingTBL;

-- 면적이 500m^2 미만인 건물의 이름과 면적을 확인

select BuildingName , ST_AREA(Building) from BuildingTBL
	where ST_AREA(Building) < 500;
    
-- 하천과 빌딩 동시에 보고 싶은 경우

select * from StreamTBL
union
select * from BuildingTBL;

-- 실습 2 (p.584)
select StreamName , BuildingName , Building , Stream
from BuildingTBL , StreamTBL
where ST_Intersects(Building , Stream) = 1 and StreamName = '안양천';

select ST_Buffer(Stream , 5) from StreamTBL; -- 하천의 폭을 5m로 설정해서 보여준다

-- 실습 3 (p.586)
drop database if exists KingHotDB;
create database KingHotDB;

use KingHotDB;

create table Restaurant
(
	restID int auto_increment primary key ,
    restName varchar(50) ,
    restAddr varchar(50) ,
    restPhone varchar(15) ,
    totSales bigint ,
    restLocation geometry
);

insert into Restaurant values(null , "왕매워 짬뽕 1호점" , '서울 강서구 방화동' , '02-111-1111' , 1000 , ST_GeomFromText('POINT(-80 -30)'));
insert into Restaurant values(null , '왕매워 짬뽕 2호점' , '서울 은평구 증산동' , '02-222-2222' , 2000 , ST_GeomFromText('POINT(-50 70)'));
insert into Restaurant values(null , '왕매워 짬뽕 3호점' , '서울 중량구 면목동' , '02-333-3333' , 9000 , ST_GeomFromText('POINT(70 50)'));

select restName , ST_Buffer(restLocation , 3) as '체인점' from Restaurant;

create table Manager
(
	ManagerID int auto_increment primary key ,
    ManagerName varchar(5) ,
    MobilePhone varchar(15) ,
    Email varchar(40) ,
    AreaName varchar(15) ,
    Area geometry SRID 0
);

insert into Manager value(null , '존밴이' , '011-123-4567' , 'johnbann@kinghot.com' , '서울 동/북부지역' ,
ST_GeomFromText('POLYGON((-90 0 , -90 90 , 90 90 , 90 -90 , 0 -90 , 0 0 , -90 0))'));

insert into Manager value(null , '당탕이' , '019-321-7654' , 'dangtang@kinghot.com' , '서울 서부지역' ,
ST_GeomFromText('POLYGON((-90 -90 , -90 90 , 0 90 , 0 -90 , -90 -90))'));

select ManagerName , Area as '당탕이' from Manager where ManagerName = '당탕이';
select ManagerName , Area as '존밴이' from Manager where ManagerName = '존밴이';
select restName , ST_Buffer(restLocation , 3) as '체인점' from Restaurant;

select ManagerName , AreaName , ST_Area(Area) as '면적 m2' from Manager;

select M.ManagerName , R.restName , R.restAddr , M.AreaName
from Restaurant as R , Manager as M
where st_contains(M.area , R.restLocation) = 1
order by M.ManagerName;

select R2.restName ,
R2.restAddr ,
R2.restPhone ,
ST_Distance(R1.restLocation , R2.restLocation) as "1호점에서 거리"
from Restaurant as R1 , Restaurant as R2
where R1.restName = '왕매워 짬뽕 1호점'
order by ST_Distance(R1.restLocation , R2.restLocation);

select area into @eastNorthSeoul from Manager where ManagerName = '존밴이';
select area into @westSeoul from Manager where ManagerName = '당탕이';
select ST_Intersection(@eastNorthSeoul , @westSeoul) into @crossArea;
select distinct R.restName as '중복 관리 지점'
	from Restaurant R , Manager M
    where ST_Contains(@corssArea , R.restLocation) = 1;
    
    