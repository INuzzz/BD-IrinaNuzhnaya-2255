select s.name as ���, s.surname as �������, s.n_group as ������
from student s
inner join student_hobby sh on sh.id_student = s.id
where sh.date_finish is not null