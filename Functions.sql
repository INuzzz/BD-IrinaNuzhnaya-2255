
/*Вывести все комментарии одного пользователя*/
select nw.title, com.text
from comments com
inner join users us on us.id = com.id_user
inner join news nw on nw.id = com.id_news
where us.id = 1

/*Вывести все опубликованные новости*/
select nw.title, nw.text
from news nw
inner join news_status ns on ns.id_news = nw.id
where ns.status = 'Опубликованно'

/*Вывести все комментарии к одной новости*/
select nw.title, us.name, com.text
from comments com
inner join users us on us.id = com.id_user
inner join news nw on nw.id = com.id_news
where com.id_news=1

/*Вывести все первые комментарии к новостям*/
select nw.title, us.name, com.text
from comments com
inner join users us on us.id = com.id_user
inner join news nw on nw.id = com.id_news
where com.id_parent_comm is  null

/*Изменение данных о публикации новости*/
update news_status
set status = 'Опубликованно',
comment = 'Отлчино'
where id = 1

/*Удаление комментария*/
update comments
set text = 'Коментарий удален'
where id = 1