SELECT
    val,
    val + 1 as prev,
    val + prev as val2
FROM ( SELECT 1 as val )
;
