SELECT
	product_name,
	group_name,
	price,
	FIRST_VALUE (price) OVER (PARTITION BY group_name ORDER BY product_name desc) AS price_per_group_per_alphab
FROM products INNER JOIN product_groups USING (group_id)
order by group_name, product_name desc;
