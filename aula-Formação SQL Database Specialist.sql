show databases;
create database if not exists primeiro_exemplo;
use primeiro_exemplo;
CREATE TABLE person(
	person_id smallint unsigned,
	fname varchar(20),
	lname varchar(20),
	gender enum('M', 'F'),
	brith_date date,
	street varchar(20),
	city varchar(20),
	caountry varchar(20),
	postal_code varchar(20),
    constraint pk_person primary key(person_id)
);
desc person;
create table favorit_food(
	person_id smallint unsigned,
	food varchar(20),
	constraint pk_favorite_food primary key (person_id, food),
	constraint fk_favorite_food_person_id foreign key (person_id)
	references person(person_id)
);
desc favorit_food;
select * from information_schema.table_constraints
where constraint_schema = 'primeiro_exemplo';

desc person;
insert into person values 	('6','Leo', 'Campos', 'F', '1979-08-21', 'rua C', 'Cidede do Rio','Brasil', '23489-52');
							

select * from person;
delete from person where person_id = 2 or person_id = 5;

desc favorit_food;
select * from favorit_food;
insert into favorit_food values (3, 'carne assada'),
								(4, 'pastel'),
                                (6, 'fetuccine');