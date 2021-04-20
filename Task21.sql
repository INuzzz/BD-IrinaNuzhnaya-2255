create or replace view avgScore as
select s.id, s.name, s.surname
from student s
group by s.id
order by avg(score)