# view

create view uv_memberTBL
as
select memberName , memberAddress from membertbl;

select * from uv_memberTBL;

# stored precedure

# sql문을 하나로 묶어서 편리하게 사용하는 기능

DELIMITER //
create procedure myProc()
begin
	select * from membertbl where memberName = '당탕이';
    select * from producttbl where productName = '냉장고';
end //
DELIMITER ;

# 실행

call myProc();

# 백업

drop table producttbl;
select * from producttbl;

use sys;
