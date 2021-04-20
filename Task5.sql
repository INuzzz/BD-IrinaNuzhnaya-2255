with hobby_count as (select sh.id_student
	  from student_hobby sh
	  where sh.date_finish is not null
	  group by sh.id_student)

select s.id, s.name, s.surname, s.date_birth, extract(year from age(now(), s.date_birth)) as age
from student s
inner join student_hobby sh on s.id = sh.id_student
inner join hobby_count hc on sh.id_student = hc.id_student
where s.date_birth is not null
order by s.id