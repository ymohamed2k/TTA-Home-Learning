show databases;
create database games;
use games;
create table games_details(
game_id int not null,
title varchar (50) not null,
publisher varchar (50) not null,
price int not null,
platforms varchar (20) not null,
primary key (game_id)
);
insert into games_details (game_id, title, publisher, price, platforms)
values ('1', 'Pokemon Legends Arceus', 'Nintendo', '44.99', 'Nintendo Switch'),
('2', 'Minecraft', 'Mojang Studios', '29.99', 'Multiplatform'),
('3', 'Elden Ring', 'Bandai Namco', '44.99', 'Multiplatform'),
('4', 'God of War', 'Sony', '44.99', 'Playstation 4'),
('5', 'Super Mario Party', 'Nintendo', '49.99', 'Nintendo Switch'),
('6', 'Halo Infinite', 'Microsoft', '44.99', 'XBOX Series'),
('7', 'Guilty Gear Strive', 'Bandai Namco', '49.99', 'Multiplatform'),
('8', 'The Legend of Zelda: BOTW', 'Nintendo', '44.99', 'Nintendo Switch'),
('9', 'Marvel Spiderman', 'Sony', '44.99', 'Playstation 4'),
('10', 'Resident Evil Village', 'Capcom', '44.99', 'Multiplatform');
explain games_details;
select * from games_details;
create table customers(
customer_id int not null,
first_name varchar (20) not null,
last_name varchar (20) not null,
address varchar (50) not null,
order_id int not null,
primary key (customer_id)
);
insert into customers (customer_id, first_name, last_name, address, order_id)
values ('1', 'Nicholas', 'Smith', '14b Hammersmith Way', '4'),
('2', 'Martin', 'Robertson', '8 Twinpeak Avenue', '7'),
('3', 'Bob', 'Holloway', '53 Warwick Street', '10'),
('4', 'Rachel', 'Rose', '22a Luxray Avenue', '1'),
('5', 'Felix', 'Rinaudo', '4 Garen Road', '5');
select * from customers;
select * from games_details;
update games_details
set price = 14.99
where game_id = 4;
delete from games_details
where game_id = 9;
select customers.order_id, customers.first_name, games_details.title
from customers, games_details
where order_id=game_id;
select*from games_details
where games_details.platforms = 'Multiplatform';
select*from customers, games_details
where order_id=game_id and games_details.title = 'Super Mario Party';
select * from games_details order by title;
select * from games_details
where price between 10 and 30;
