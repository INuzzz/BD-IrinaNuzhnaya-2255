select s.name as Имя, s.surname as Фамилия, s.n_group as Группа
from student s
inner join student_hobby sh on sh.id_student = s.id
where sh.date_finish is not null