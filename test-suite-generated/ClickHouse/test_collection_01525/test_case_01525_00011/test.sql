SELECT
	product_name,
	group_name,
	price,
	LAST_VALUE (price) OVER (PARTITION BY group_name ORDER BY
			price RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
  ) AS highest_price_per_group
FROM
	products
INNER JOIN product_groups USING (group_id)
order by group_name, product_name;
