create or replace view OldHobby as
select s.id, s.name, s.surname, s.date_birth, s.n_group, s.score, sh.date_start, sh.date_finish,
   case
	when date_finish is null then extract(year from age(now(), sh.date_start))
    else extract(year from age(sh.date_finish, sh.date_start))
	end as h_time, h.name as hobby_name
from student s
inner join student_hobby sh on sh.id_student = s.id
inner join hobby h on sh.id_hobby = h.id
where case
	when date_finish is null then extract(year from age(now(), sh.date_start))
    else extract(year from age(sh.date_finish, sh.date_start))
	end >= 5 and sh.date_finish is null
	