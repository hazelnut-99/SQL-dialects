select product_name, price, group_name, round(avg0), round(avg1)
from (
SELECT
	product_name,
	price,
	group_name,
	avg(price) OVER (PARTITION BY group_name ORDER BY price) avg0,
	avg(price) OVER (PARTITION BY group_name ORDER BY
			price RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) avg1
FROM products INNER JOIN  product_groups USING (group_id)) t
order by group_name, product_name, price;
