select s.id, s.name, s.surname, h.name, 
   case
	when sh.date_finish is null then extract(year from age(now(), sh.date_start))
    else extract(year from age(sh.date_finish, sh.date_start)) end as hobby_time
from student s
inner join student_hobby sh on sh.id_student = s.id
inner join hobby h on sh.id_hobby = h.id
order by hobby_time desc
limit 10