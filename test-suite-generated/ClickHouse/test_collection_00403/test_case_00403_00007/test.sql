SELECT (uniq(a), uniq(b), uniq(c)),
    (uniqCombined(a), uniqCombined(b), uniqCombined(c)),
    (uniqCombined(17)(a), uniqCombined(17)(b), uniqCombined(17)(c)),
    (uniqExact(a), uniqExact(b), uniqExact(c)),
    (uniqHLL12(a), uniqHLL12(b), uniqHLL12(c))
FROM (SELECT * FROM decimal ORDER BY a);
