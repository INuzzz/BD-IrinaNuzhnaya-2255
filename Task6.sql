with new_table as (select sh.id_student, count(sh.id_hobby) as count_hobby
	  from student_hobby sh
	  group by sh.id_student)

select avg(s.score)::real, s.n_group
from student s
inner join student_hobby sh on s.id = sh.id_student
inner join new_table nt on sh.id_student = nt.id_student
where nt.count_hobby >=1
group by s.n_group
order by s.n_group
