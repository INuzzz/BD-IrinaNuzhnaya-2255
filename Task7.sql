select s.name, s.surname, max(
	case
	when date_finish is null then extract(year from age(now(), sh.date_start))*12
	end) as h_time
from student s
inner join student_hobby sh on sh.id_student = s.id
where sh.date_finish is null
group by s.name, s.surname
order by h_time desc
limit 1
