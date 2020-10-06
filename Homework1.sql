create TABLE customers
(
    id      int not null,
    name    varchar(255),
    address varchar(255),
    city    varchar(255),
    prime   boolean,
    primary key (id)
);

insert into customers (id, name, address, city, prime)
values (123, 'Max Mustermann', 'Heidestraße 17', 'Köln', true);
insert into customers (id, name, address, city, prime)
values (124, 'Erika Mustermann', 'Nußhäherstraße 10', 'Köln', false);
insert into customers (id, name, address, city, prime)
values (125, 'Max Müller', 'Chausseestr. 78', 'Hemdingen', true);
insert into customers (id, name, address, city, prime)
values (126, 'Christine Bachmeier', 'Lützowplatz 53', 'Neroth', false);

select name
from customers
where prime = false;

SELECT count(city) as Anzahl from customers where city='Köln';

SELECT count(city), city as Kunden from customers group by city;