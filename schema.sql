create database mycatalog;

create table item (
id int generated always as identity,
publish_date date,
archived boolean,
constraint pk_id primary key(id));

create table author(
id int generated always as identity,
first_name varchar(300),
last_name varchar(300),
constraint pk_authorid primary key(id)
);

create table game(
id int generated always as identity,
author_id int,
item_id int,
multiplayer boolean,
last_play_at date,
publish_date date,
constraint pk_game_id primary key(id),
constraint fk_item_id foreign key (item_id) references item(id),
constraint fk_author_id foreign key (author_id) references author(id)
);