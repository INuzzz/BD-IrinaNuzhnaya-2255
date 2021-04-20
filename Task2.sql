select s.name, s.surname, 
case
when sh.date_finish is null then (now()::date - sh.date_start)
else sh.date_finish - sh.date_start
end
from student s
inner join student_hobby sh on s.id = sh.id_student


/* - одного студента, самое продолжительное время */