
create table users(
	id serial PRIMARY KEY,
	name varchar(255),
	role varchar(100) DEFAULT 'Пользователь'
)

create table news(
	id serial PRIMARY KEY,
	title varchar(255),
	text(10000)
)

create table comments(
	id serial PRIMARY KEY,
	id_parent_comm integer references comments(id),
	id_user integer references users(id),
	id_news integer references news(id),
	text varchar(1000)
)

create table news_status(
	id serial PRIMARY KEY,
	id_news integer references news(id),
	status varchar(255)  DEFAULT 'На рассмотрении'
	comments varchar(1000)
)

create table news_comm(
	id serial PRIMARY KEY,
	id_news integer references news(id),
	id_comm integer references comments(id)
)

create table user_comm(
	id serial PRIMARY KEY,
	id_user integer references users(id),
	id_comm integer references comments(id)
)