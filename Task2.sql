select s.name, s.surname, 
case
when sh.date_finish is null then (now()::date - sh.date_start)
else sh.date_finish - sh.date_start
end as time_hobby
from student s
inner join student_hobby sh on s.id = sh.id_student
order by time_hobby desc
limit 1