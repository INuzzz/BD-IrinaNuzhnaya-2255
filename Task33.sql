select surname, case
  when surname like '%��' then (length(surname)-2)::varchar
  else '�� �������' end
from student