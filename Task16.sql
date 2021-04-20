select h.name, count(sh.id_student) as countst
from hobby h
inner join student_hobby sh on sh.id_hobby = h.id
group by h.name
order by countst desc
limit 1