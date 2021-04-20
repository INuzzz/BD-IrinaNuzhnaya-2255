select s.id, s.name, s.surname, s.date_birth,
case
when sh.date_finish is not null and sh.date_start is not null then cast(age(sh.date_finish, sh.date_start) as interval month)
end
from student s
inner join student_hobby sh on s.id = sh.id_student
order by s.id

/* - вернуть просто количество месяцей, тут не так возвращает. Нужно достать из интервала месяц и достать год, который умножить на 12. И это сложить. Также в where надо убрать сразу все незавершённые хобби и case в select
вообще не понадобится */