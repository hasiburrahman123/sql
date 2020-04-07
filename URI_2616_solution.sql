select customers.id,customers.name
from customers
where customers.id not in(select id_customers from locations);