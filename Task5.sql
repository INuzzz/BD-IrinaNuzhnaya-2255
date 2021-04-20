with hobby_count as (select sh.id_student
	  from student_hobby sh
	  where sh.date_finish is not null
	  group by sh.id_student)

select s.id, s.name, s.surname, s.date_birth, 
case
when s.date_birth is not null then extract(year from age(now(), s.date_birth))
end
from student s
inner join student_hobby sh on s.id = sh.id_student
inner join hobby_count hc on sh.id_student = hc.id_student
order by s.id
