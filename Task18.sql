with high_riskH as (select h.name, count(sh.id_student) as countst
select h.name, h.risk
from hobby h
group by h.name, h.risk
order by h.risk desc
limit 3