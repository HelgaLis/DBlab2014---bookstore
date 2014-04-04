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
INSERT INTO CUSTOMERS(id,name) VALUES(1,"");
INSERT INTO CUSTOMERS(name) VALUES("Елизата Пельмешова");
INSERT INTO CUSTOMERS(name) VALUES("Ольга Яровая");
INSERT INTO CUSTOMERS(name) VALUES("Антон Мясков");
