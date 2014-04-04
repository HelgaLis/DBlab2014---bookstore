create generator g_books;
create generator g_authors;
create generator g_books_categories;
create generator g_books_authors;
create generator g_customers;
create generator g_customers_orders;
create generator g_order_content;

SET TERM !!!;
create trigger p_cust for CUSTOMERS
BEFORE insert position 0
as
begin
 IF (NEW.id IS NULL)
    THEN NEW.ID = gen_id(g_customers,1);
end!!!
SET TERM; !!!

SET TERM !!!;
create trigger p_cust_ord for CUSTOMERS_ORDERS
BEFORE insert position 0
as
begin
 IF (NEW.id IS NULL)
    THEN NEW.ID = gen_id(g_customers_orders,1);
end!!!
SET TERM; !!!

SET TERM !!!;
create trigger p_ord_cont for ORDER_CONTENT
BEFORE insert position 0
as
begin
 IF (NEW.id IS NULL)
    THEN NEW.ID = gen_id(g_order_contents,1);
end!!!
SET TERM; !!!
SET TERM !!!;
create trigger p_bo for BOOKS
BEFORE insert position 0
as
begin
 IF (NEW.id IS NULL)
    THEN NEW.ID = gen_id(g_books,1);
end!!!
SET TERM; !!!

SET TERM !!!;
create trigger p_au for AUTHORS
BEFORE insert position 0
as
begin
 IF (NEW.id IS NULL)
    THEN NEW.ID = gen_id(g_authors,1);
end!!!
SET TERM; !!!

SET TERM !!!;
create trigger p_cat for BOOKS_CATEGORIES
BEFORE insert position 0
as
begin
 IF (NEW.id IS NULL)
    THEN NEW.ID = gen_id(g_books_categories,1);
end!!!
SET TERM; !!!

SET TERM !!!;
create trigger p_boau for BOOKS_AUTHORS
BEFORE insert position 0
as
begin
 IF (NEW.id IS NULL)
    THEN NEW.ID = gen_id(g_books_authors,1);
end!!!
SET TERM; !!!

