create or replace view popularHobby as
select h.name, count(sh.id_student) as countst, h.risk
from hobby h
inner join student_hobby sh on sh.id_hobby = h.id
inner join student s on s.id = sh.id_student
where s.n_group::varchar like '2%'
group by h.name, h.risk
order by countst desc, risk desc
limit 1
