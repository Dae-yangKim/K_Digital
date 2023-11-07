-- 실습 p.248 ~ p.268

-- MySQL 내장 함수


-- IF
select if (100 > 200 , '참이다' , '거짓이다');
-- IFNULL
select ifnull(null , '널이군요') , ifnull(100 , '널이군요');
-- NULLIF
select nullif(100 , 100) , nullif(200 , 100); -- 두 숫자가 같으면 null을 반환 , 아닐 경우 다를 경우 수식1을 반환한다.
-- case ~ when ~ else ~ end
select case 10
	when 1 then '일'
    when 5 then '오'
    when 10 then '열'
    else '모름'
end as 'case연습';
-- 문자열 함수
-- ascii(아스키코드) , char(숫자)
select ascii('A') , char(65);
-- bit_length(문자열) , char_length(문자열) , length(문자열)
select bit_length('abc') , char_length('abc') , length('abc');
select bit_length('가나다') , char_length('가나다') , length('가나다');
-- concat , concat_ws
select concat_ws('/' , '2025' , '01' , '01');
-- elt , field , find_in_set , instr , locate
select elt(2 , '하나' , '둘' , '셋') , field('둘' , '하나' , '둘' , '셋') , find_in_set('둘' , '하나,둘,셋') , locate('둘' , '하나둘셋');
-- format
select format(123456.123456 , 4);
-- bin , hex , oct
select bin(31) , hex(31) , oct(31);
-- insert
select insert('abcdefghi' , 3 , 4 , '@@@@') , insert('abcdefghi' , 3 , 2 , '@@@@');
-- left , right
select left('abcdefghi' , 3) , right('abcdefghi' , 3);
-- upper , lower
select lower('abcdEFGH') , upper('abcdEFGH');
-- lpad , rpad
select lpad('이것이' , 5 , '##') , rpad('이것이' , 5 , '##');
-- ltrim , rtrim
select ltrim('      이것이') , rtrim('이것이          ');
-- repeat
select repeat('이것이' , 3);
-- replace
select replace('이것이 MySQL이다' , '이것이' , 'This is');
-- reverse
select reverse('MySQL');
-- 수학 함수
-- abs
select abs(-100);
-- conv
select conv('AA' , 16 , 2) , conv(100 , 10 , 8);
-- pow , sqrt
select pow(2 , 3) , sqrt(9);