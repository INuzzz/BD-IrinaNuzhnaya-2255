select s.id, s.name, s.surname, s.date_birth, s.score, h.risk
from student s
inner join student_hobby sh on s.id = sh.id_student
inner join hobby h on sh.id_student = h.id
group by s.id, h.risk
having s.score>= avg(s.score) and h.risk >= 0.9
and h.risk in (select sum(h.risk)
               from hobby h
               inner join student_hobby sh on h.id = sh.id_hobby
               group by sh.id_student)
order by s.id
