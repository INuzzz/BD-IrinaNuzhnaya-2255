select substr(name,1,1), min(score), max(score), avg(score)::real
from student
group by substr(name,1,1)
having max(score)>3.6
order by substr(name,1,1)