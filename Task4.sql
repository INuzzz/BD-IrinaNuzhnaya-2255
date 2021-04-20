select s.id, s.name, s.surname, s.date_birth,
case
when sh.date_finish is not null and sh.date_start is not null then cast(age(sh.date_finish, sh.date_start) as interval month)
end
from student s
inner join student_hobby sh on s.id = sh.id_student
order by s.id
