SELECT
  id,
  user_id,
  order_id,
  LAG(order_id, 0, -1 IGNORE NULLS) over (
    PARTITION BY user_id
    ORDER BY id
  ) AS last_order_id
FROM issue2549
ORDER BY ALL;
