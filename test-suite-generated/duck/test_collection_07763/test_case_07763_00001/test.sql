SELECT
  id,
  user_id,
  order_id,
  FIRST_VALUE (order_id IGNORE NULLS) over (
    PARTITION BY user_id
    ORDER BY id
    ROWS BETWEEN 1 PRECEDING AND UNBOUNDED FOLLOWING
  ) AS last_order_id
FROM issue2549
ORDER BY ALL;
