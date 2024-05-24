SELECT * FROM
(
    SELECT ['left'] as ar, 42 AS left_number
) js1
FULL JOIN
(
    SELECT ['right'] as ar, 42 AS right_number
) js2
USING(ar)
ORDER BY left_number;
