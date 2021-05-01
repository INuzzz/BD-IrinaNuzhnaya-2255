with Count_St as (select count(*), case 
		                        when n_group::varchar like '2%' then 2
		                        when n_group::varchar like '3%' then 3
		                        else 4 end as course
		from student
		group by case 
		when n_group::varchar like '2%' then 2
		when n_group::varchar like '3%' then 3
		else 4 end),

Count_StWithHobby as (select count(*), case 
		                        when n_group::varchar like '2%' then 2
		                        when n_group::varchar like '3%' then 3
		                        else 4 end as course
			from student s
			inner join student_hobby sh on sh.id_student = s.id
			inner join hobby h on sh.id_hobby = h.id
			where sh.id_hobby is not null
			group by course)
				
select *
from Count_St cs
inner join Count_StWithHobby  csh on cs.course = csh.course
where cs.course >= csh.count * 0.5

/*  */