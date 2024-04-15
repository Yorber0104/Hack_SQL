create table pais(
id_pais serial primary key,
name VARCHAR(50) not null
);

create table role(
id_role serial primary key,
role VARCHAR(50) not null
);

create table taxes(
id_tax serial PRIMARY key,
percentage INTEGER not null
);

create table offers(
id_offer serial primary KEY,
status varchar(50) not null
);

create table discounts(
id_discount serial PRIMARY key,
status varchar(50) not null,
percentage INTEGER not null
);

create table payments(
id_payment serial primary key,
type VARCHAR(50) not null
);

create table invoice_status(
id_invoice_status serial PRIMARY key,
status VARCHAR(50) not null
);

create table customers(
id_email serial primary key,
id_country INTEGER not null REFERENCES pais (id_pais),
id_role INTEGER not null REFERENCES role (id_role),
name VARCHAR(50) not null,
age INTEGER not null,
email VARCHAR(50)not null,
password INTEGER not null,
physical_address VARCHAR(50) not null
);

create table products(
id_product serial primary key,
id_discount INTEGER not null REFERENCES discounts (id_discount),
id_offer INTEGER not null REFERENCES offers (id_offer),
id_tax INTEGER not null REFERENCES taxes (id_tax),
name VARCHAR(50) not null,
details varchar(50) not null,
minimun_stock INTEGER not null,
maximum_stock INTEGER not null,
current_stock INTEGER not null,
price INTEGER not null,
price_whit_tax INTEGER not null
);

create table products_customers(
id_product INTEGER not null REFERENCES products (id_product),
id_customer INTEGER not null REFERENCES customers (id_email)
);

create table invoices(
id_invoice serial PRIMARY key,
id_customer INTEGER not null REFERENCES customers (id_email),
id_payment INTEGER not null REFERENCES payments (id_payment),
id_invoice_status INTEGER not null REFERENCES invoice_status (id_invoice_status)
);

create table orders(
id_order serial PRIMARY KEY,
id_invoice INTEGER not null REFERENCES invoices (id_invoice),
id_product INTEGER not null REFERENCES products (id_product)
);