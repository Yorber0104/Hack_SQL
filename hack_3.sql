create table countries(
id_country serial primary key,
name varchar(50) not NULL
);

create table priorities(
id_priority serial primary key,
type_name varchar(50) not NULL
);

create table contact_request(
id_email serial primary key,
id_country INTEGER not null REFERENCES countries (id_country),
id_priority INTEGER not null REFERENCES priorities (id_priority),
name VARCHAR(50) not null,
email varchar(50) not null,
physical_address varchar(100) not NULL
);

