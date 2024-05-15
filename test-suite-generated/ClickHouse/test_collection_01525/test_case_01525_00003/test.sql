SELECT
	product_name,
	group_name,
  price,
	rank() OVER (PARTITION BY group_name ORDER BY price) rank
FROM products INNER JOIN product_groups USING (group_id)
order by group_name, rank, price, product_name;
