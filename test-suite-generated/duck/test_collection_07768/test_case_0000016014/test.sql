SELECT
  id,
  user_id,
  order_id,
  LEAD(order_id, 1, -1 IGNORE NULLS) over (
    PARTITION BY user_id
    ORDER BY id
  ) AS last_order_id
FROM issue2549
ORDER BY ALL;
