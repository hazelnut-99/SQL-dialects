WITH
    (
        SELECT arrayCumSum(groupArray(amount))
        FROM
        (
            SELECT
                amount
            FROM bm
            ORDER BY business_dttm
        )
    ) AS arr,
    1 + rowNumberInAllBlocks() AS id,
    3 AS window_size
SELECT
    amount,
    business_dttm,
    if(id < window_size, NULL, round(arr[id] - arr[id - window_size], 4)) AS moving_sum
FROM
(
    SELECT
        amount,
        business_dttm
    FROM bm
    ORDER BY business_dttm
) ORDER BY business_dttm;
