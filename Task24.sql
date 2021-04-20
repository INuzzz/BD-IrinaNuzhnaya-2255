create or replace view CountStudent as
select *
from Count_St
inner join Count_exSt on Count_exStud.course = Count_St.course
		
		
with Count_St as (select count(*) as countAll, case 
		                        when n_group::varchar like '2%' then 2
		                        when n_group::varchar like '3%' then 3
		                        else 4 end as course
		from student
		group by course),
Count_exSt as (select count(*) as countEx, case 
		                        when n_group::varchar like '2%' then 2
		                        when n_group::varchar like '3%' then 3
		                        else 4 end as course
			   where score>4
               group by course)
