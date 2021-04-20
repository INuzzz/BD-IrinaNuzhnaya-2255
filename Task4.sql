select s.id, s.name, s.surname, s.date_birth, (extract(year from age(sh.date_finish, sh.date_start)*12)+extract(month from age(sh.date_finish, sh.date_start))) as time_hobby
from student s
inner join student_hobby sh on s.id = sh.id_student
where sh.date_finish is not null
order by s.id
