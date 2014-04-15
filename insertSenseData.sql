/*add book's authors*/
INSERT INTO AUTHORS(name) values('Роберт Седжвик');
INSERT INTO AUTHORS(name) values('Кевин Уэйн');
INSERT INTO AUTHORS(name) values('Silvia Platt');
INSERT INTO AUTHORS(name) values('Грегорий Остер');
INSERT INTO AUTHORS(name) values('Умберто Эко');

/*add book's categories*/
insert into BOOKS_CATEGORIES(name) values('Программирование');
insert into BOOKS_CATEGORIES(name) values('Детские книги');
insert into BOOKS_CATEGORIES(name) values('Ноты');
insert into BOOKS_CATEGORIES(name) values('Школьные учебники');
insert into BOOKS_CATEGORIES(name) values('Гиды');
insert into BOOKS_CATEGORIES(name) values('Поэзия');
insert into BOOKS_CATEGORIES(name) values('Проза');

/*add books*/
INSERT INTO BOOKS(name,price, items,category) 
VALUES ('Программирование на JAVA',700.00,4,BOOKS_CATEGORIES.id);
INSERT INTO BOOKS(name,price, items,category) 
VALUES ('Belly jar',450.00,1,7);
INSERT INTO BOOKS(name,price, items,category) 
VALUES ('Вредные советы',200.00,25,2);
INSERT INTO BOOKS(name,price, items,category) 
VALUES ('Буандолино',467.00,15,7);
INSERT INTO BOOKS(name,price, items,category) 
VALUES ('Маятник Фуко',390.00,9,7);

/*add link between authors and books*/
INSERT INTO BOOKS_AUTHORS(BOOK,AUTHOR)
VALUES(1,1);
INSERT INTO BOOKS_AUTHORS(BOOK,AUTHOR)
VALUES(1,2);
INSERT INTO BOOKS_AUTHORS(BOOK,AUTHOR)
VALUES(3,3);
INSERT INTO BOOKS_AUTHORS(BOOK,AUTHOR)
VALUES(4,4);
INSERT INTO BOOKS_AUTHORS(BOOK,AUTHOR)
VALUES(5,5);
INSERT INTO BOOKS_AUTHORS(BOOK,AUTHOR)
VALUES(6,5);

/*add CUSTOMERS*/
INSERT INTO CUSTOMERS(name) VALUES('Елизата Пельмешова');
INSERT INTO CUSTOMERS(name) VALUES('Ольга Яровая');
INSERT INTO CUSTOMERS(name) VALUES('Атон Мясков');

/*add books_orders*/
INSERT INTO CUSTOMERS_ORDERS(customer,order_date,order_status) VALUES(1,current_date,'0'); 
INSERT INTO CUSTOMERS_ORDERS(customer,order_date,order_status) VALUES(2,current_date,'0'); 
INSERT INTO CUSTOMERS_ORDERS(customer,order_date,order_status) VALUES(3,current_date,'0'); 

/*order_content*/
INSERT INTO ORDER_CONTENT(CUSTOMERS_ORDERS,BOOK) VALUES(1,1);
INSERT INTO ORDER_CONTENT(CUSTOMERS_ORDERS,BOOK) VALUES(1,3);
INSERT INTO ORDER_CONTENT(CUSTOMERS_ORDERS,BOOK) VALUES(2,2);
INSERT INTO ORDER_CONTENT(CUSTOMERS_ORDERS,BOOK) VALUES(2,1);
INSERT INTO ORDER_CONTENT(CUSTOMERS_ORDERS,BOOK) VALUES(2,4);
