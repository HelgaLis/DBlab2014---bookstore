create table books_categories(
id int not null primary key,
name varchar(40) not null);

create table authors(
id int not null primary key,
name varchar(50) not null);

create table books(
id int not null primary key,
name varchar(50) not null,
publish_date date,
price decimal(10,2) not null,
items int not null,
category int references books_categories(id),
constraint available_items check (items>=0),
constraint price_val check (price>=0));

create table books_authors(
id int not null primary key,
book int  references books(id),
author int references authors(id));

create table customers(
id int not null primary key,
name varchar(50) not null 
);
/*create table customers_carts();*/

create table customers_orders(
id int not null primary key,
customer int references customers(id),
order_date date not null,
order_status char(1)
);

create table order_content(
id int not null primary key,
customer int references customers(id),
customers_orders int references customers_orders(id),
book int  references books(id)
);

create table books_reviews(
id int not null primary key,
book int  references books(id),
customer int references customers(id),
review_text BLOB not null,
book_rate int default 0,
constraint c_rate check (book_rate between 0 AND 5)
);

