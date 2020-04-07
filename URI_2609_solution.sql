select categories.name, sum(products.amount) 
from products, categories 
where products.id_categories = categories.id 
group by categories.name;