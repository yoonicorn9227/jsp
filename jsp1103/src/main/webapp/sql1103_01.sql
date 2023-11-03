select ROWNUM, bno, btitle,bcontent,bdate 
from board
order by bno;


select *
from
(
select ROW_NUMBER() OVER (ORDER BY bno desc) as rnum,bno,btitle,bcontent,bdate
from board 
where btitle like '%sum%' or abcontent like '%sum%'
) a
where a.rnum>=1 and a.rnum<=10
;



select * from(select ROW_NUMBER() OVER (ORDER BY bno desc) as rnum,bno,btitle,bdate from board ) a where a.rnum>=11 and a.rnum<=20;


select * from(select ROW_NUMBER() OVER (ORDER BY bno desc) as rnum,bno,btitle,bdate from board ) a where a.rnum>=81 and a.rnum<=90;

select * from
(select ROW_NUMBER() OVER (ORDER BY bno desc) as 
rnum,bno,btitle,bcontent,bdate from board where btitle like '%sum%' or bcontent like '%sum%') a where a.rnum>=21 and a.rnum<=30
;
