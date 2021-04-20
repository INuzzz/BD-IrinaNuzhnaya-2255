select  extract(month from s.date_birth) as month_birth, count(*) filter(where h.name like 'Футбол')
from student s
inner join student_hobby sh on sh.id_student = s.id
inner join hobby h on sh.id_hobby = h.id
group by extract(month from s.date_birth)