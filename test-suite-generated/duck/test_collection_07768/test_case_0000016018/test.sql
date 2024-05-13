SELECT
  id,
  user_id,
  order_id,
  FIRST_VALUE (order_id RESPECT NULLS) over (
    PARTITION BY user_id
    ORDER BY id
    ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING
  ) AS last_order_id
FROM issue2549
ORDER BY ALL;
