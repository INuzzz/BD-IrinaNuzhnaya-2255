select surname, case
  when surname like '%ов' then (length(surname)-2)::varchar
  else 'не найдено' end
from student