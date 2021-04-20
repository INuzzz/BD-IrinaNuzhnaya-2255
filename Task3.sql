with sum_risk as(select sh.id_student, sum(h.risk) as risk
				from hobby h
				inner join student_hobby sh on sh.id_hobby = h.id
				group by sh.id_student)

select s.id, s.name, s.surname, s.date_birth, s.score, sk.risk
from student s
inner join student_hobby sh on s.id = sh.id_student
inner join hobby h on sh.id_student = h.id
inner join sum_risk sk on sk.id_student = s.id
group by s.id, sk.risk
having  s.score>= avg(s.score) and sk.risk >= 0.9
order by s.id
