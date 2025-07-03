use bankemp;
select * from customer;
select * from customer_order;

--  Creating a View with select statement
create view cus_abc AS
select customer_id,first_name
from customer
where address_id > 6;

-- Displaing the view table
select * from cus_abc;

-- Views for abstravtion
select c.customer_id,c.first_name,o.amount
from customer AS c
inner join customer_order AS o
on c.customer_id=o.customer_id;

-- cresting view
create view join_acs AS
select c.customer_id,c.first_name,o.amount
from customer AS c
inner join customer_order AS o
on c.customer_id=o.customer_id;

select * from join_acs;
-- view for security
create view sec_abc AS
select customer_id,last_name
from customer
where address_id > 6;

select * from sec_abc;
select * from customer;
