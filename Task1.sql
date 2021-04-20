select s.name, s.surname, h.name
from student s, student_hobby sh, hobby h
where s.id = sh.id_student and sh.id_hobby = h.id