select count(*), case 
		   when n_group::varchar like '2%' then 2
		   when n_group::varchar like '3%' then 3
		   else 4 end as course
from student s
inner join student_hobby sh on sh.id_student = s.id
inner join hobby h on sh.id_hobby = h.id
where sh.date_finish is not null
group by course