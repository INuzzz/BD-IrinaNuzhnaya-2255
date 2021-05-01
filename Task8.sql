select s.score, h.name
from student s
inner join student_hobby sh on s.id = sh.id_student
inner join hobby h on sh.id_hobby = h.id
where s.score = (select max(score)
				  from student)

/* + */