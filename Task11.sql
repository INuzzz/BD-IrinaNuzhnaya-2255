with Count_St as (select count(*), n_group
from student s
group by n_group),

Count_St_byscore as (select count(*), n_group
from student s
where score >=4
group by n_group)

select *
from Count_St cs
inner join Count_St_byscore css on css.n_group = cs.n_group
where (css.count::real/cs.count::real) > 0.6
