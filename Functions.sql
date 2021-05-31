
/*������� ��� ����������� ������ ������������*/
select nw.title, com.text
from comments com
inner join users us on us.id = com.id_user
inner join news nw on nw.id = com.id_news
where us.id = 1

/*������� ��� �������������� �������*/
select nw.title, nw.text
from news nw
inner join news_status ns on ns.id_news = nw.id
where ns.status = '�������������'

/*������� ��� ����������� � ����� �������*/
select nw.title, us.name, com.text
from comments com
inner join users us on us.id = com.id_user
inner join news nw on nw.id = com.id_news
where com.id_news=1

/*������� ��� ������ ����������� � ��������*/
select nw.title, us.name, com.text
from comments com
inner join users us on us.id = com.id_user
inner join news nw on nw.id = com.id_news
where com.id_parent_comm is  null

/*��������� ������ � ���������� �������*/
update news_status
set status = '�������������',
comment = '�������'
where id = 1

/*�������� �����������*/
update comments
set text = '���������� ������'
where id = 1