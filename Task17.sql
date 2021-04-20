with high_riskH as (select h.name, count(sh.id_student) as countst
from hobby h
inner join student_hobby sh on sh.id_hobby = h.id
group by h.name
order by countst desc
limit 1)

select s.id, s.name, s.surname, s.date_birth, s.n_group, s.score, h.name, h.risk
from student s
inner join student_hobby sh on sh.id_student = s.id
inner join hobby h on sh.id_hobby = h.id
inner join high_riskH hrh on hrh.name = h.name