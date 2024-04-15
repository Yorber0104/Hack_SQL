INSERT INTO pais (name) values ('Argentina'), ('Colombia'), ('Venezuela');
select * from pais;

insert into role (role) VALUES ('Defensa'), ('Educacion'), ('Alimentacion');
select * from role;

insert into taxes (percentage) values (10), (15), (50);
SELECT * from taxes;

insert into offers (status) values ('Disponible'), ('Disponible'), ('No disponible');
select * from offers;

insert into discounts (status, percentage) values ('Disponible', 50), ('Disponible', 20), ('No disponible', 30);
select * from discounts;

insert into payments (type) values ('Credito'), ('De contado'), ('Credito');
select * from payments;

insert into invoice_status (status) values ('Aprobada'), ('Pendiente'), ('Vencida');
select * from invoice_status;

insert into customers (id_country, id_role, name, age, email, password, physical_address) VALUES
(1, 1, 'Yorber', 33, 'yorber@gmail.com', 12345, 'Caracas'),
(2, 2, 'Neldy', 31, 'neldy@gmail.com', 23456, 'Merida'),
(3, 3, 'David', 3, 'David@gmail.com', 34567, 'Merida');
select * from customers;

insert into products (id_discount, id_offer, id_tax, name, details, minimun_stock, maximum_stock, current_stock, price, price_whit_tax) VALUES
(1, 1, 1, 'cocina', 'blanco', 5, 10, 8, 30, 32),
(2, 2, 2, 'refrigerador', 'negro', 10, 20, 17, 50, 52),
(3, 3, 3, 'congelador', 'plateado', 20, 30, 25, 45, 48);
select * from products;

insert into products_customers (id_product, id_customer) values (1, 1), (2, 2), (3, 3);
select * from products_customers;

insert into invoices (id_customer, id_payment, id_invoice_status) values (1, 1, 1), (2, 2, 2), (3, 3, 3);
select * from invoices;

select * from invoices INNER JOIN invoice_status on invoices.id_invoice = invoice_status.id_invoice_status;

insert into orders (id_invoice, id_product) values (1, 1), (2, 2), (3,3);
select * from  orders; 

SELECT * from orders INNER JOIN products on orders.id_order = products.id_product;

update taxes set percentage = 15 WHERE id_tax = 1;
UPDATE taxes set percentage = 20 where id_tax = 2;
UPDATE taxes set percentage = 70 WHERE id_tax = 3;

select * from taxes;

update products set price = 35 WHERE id_product = 1;
update products set price = 55 where id_product = 2;
update products set price = 50 where id_product = 3;

select * from products;