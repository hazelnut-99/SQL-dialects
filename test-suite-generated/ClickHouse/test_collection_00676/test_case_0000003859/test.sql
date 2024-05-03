SELECT PP.Key2 AS `ym:s:pl2`
FROM visits1
ARRAY JOIN
    `ParsedParams.Key2` AS `PP.Key2`,
    `ParsedParams.Key1` AS `PP.Key1`,
    arrayEnumerateUniq(`ParsedParams.Key2`, arrayMap(x_0 -> 1, `ParsedParams.Key1`)) AS `upp_==_yes_`,
    arrayEnumerateUniq(`ParsedParams.Key2`) AS _uniq_ParsedParams
WHERE CounterID = 100500;
