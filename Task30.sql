select substr(s.name,1,1), max(h.risk), min(h.risk)
from student s
inner join student_hobby sh on sh.id_student = s.id
inner join hobby h on sh.id_hobby = h.id
group by substr(s.name,1,1)
