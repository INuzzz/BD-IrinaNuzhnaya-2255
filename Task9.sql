select h.name, s.score, sh.date_finish, s.n_group
from hobby h
inner join student_hobby sh on sh.id_hobby = h.id
inner join student s on sh.id_student = s.id
where s.score > 2 and s.score < 4 and sh.date_finish is null and n_group::varchar like '2%'

/* + */