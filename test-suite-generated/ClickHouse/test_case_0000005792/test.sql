SELECT
	product_name,
	price,
	group_name,
	AVG(price) OVER (PARTITION BY group_name)
FROM products INNER JOIN  product_groups USING (group_id)
order by group_name, product_name, price;
