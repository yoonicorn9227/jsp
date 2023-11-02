select * from member;


select * from member
where id ='aaa' and pw='1111'
;


select * from board;

--board
select * from board;
--sum
select rownum ,a.* 
from (select * from board where bcontent like '%sum%'order by bno) a
where rownum >=1 and rownum <=10
;


select * from
(
select row_number() over(order by bno) rnum, a.*
from board a
where bcontent like '%sum%'
) b
where b.rnum>=11 and b.rnum <= 20
;



