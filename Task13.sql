select s.id, s.name, s.surname, s.date_birth, s.n_group, s.score
from student s
inner join student_hobby sh on sh.id_student = s.id
where s.score > 4 and sh.date_start is null
order by s.n_group , s.date_birth DESC