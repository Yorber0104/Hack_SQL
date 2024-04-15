insert into countries (name) values ('Argentina'), ('Colombia'), ('Venezuela'), ('Chile'), ('Uruguay');
select * from countries;

insert into priorities (type_name) values ('Entretenimiento'), ('Trabajo'), ('Salud');
select * from priorities;
  
insert into contact_request (id_country, id_priority, name, email, physical_address)
values (1, 1, 'fooziman', 'fooziman@gmail.com', 'petare'), (2, 2, 'barziman', 'barziman@gmail.com', 'baruta'),
(3, 3, 'delta', 'delta@gmail.com', 'concresa');
SELECT * from contact_request;

delete from contact_request where email = 'delta@gmail.com';
select * from contact_request;

UPDATE contact_request set email = 'fooziman@fooziman.com', name = 'Yorber' where id_email = 1;
select * from contact_request;