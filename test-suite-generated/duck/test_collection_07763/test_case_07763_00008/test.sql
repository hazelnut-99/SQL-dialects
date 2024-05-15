SELECT
  id,
  user_id,
  order_id,
  NTH_VALUE (order_id, 2 RESPECT NULLS) over (
    PARTITION BY user_id
    ORDER BY id
    ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING
  ) AS last_order_id
FROM issue2549
ORDER BY ALL;
