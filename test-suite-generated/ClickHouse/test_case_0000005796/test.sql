SELECT
	product_name,
	group_name,
	price,
	row_number() OVER (PARTITION BY group_name ORDER BY price desc, product_name asc) rn
FROM products INNER JOIN product_groups USING (group_id)
ORDER BY group_name, rn;
