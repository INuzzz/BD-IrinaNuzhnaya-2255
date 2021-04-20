select  extract(year from s.date_birth) as year_birth, count(h.name)
from student s
inner join student_hobby sh on sh.id_student = s.id
inner join hobby h on sh.id_hobby = h.id
group by year_birth