SELECT (uniq(a), uniq(b), uniq(c)),
    (uniqCombined(a), uniqCombined(b), uniqCombined(c)),
    (uniqCombined(17)(a), uniqCombined(17)(b), uniqCombined(17)(c)),
    (uniqExact(a), uniqExact(b), uniqExact(c)),
    (102 - uniqHLL12(a) >= 0, 102 - uniqHLL12(b) >= 0, 102 - uniqHLL12(c) >= 0, uniqHLL12(a) - 99 >= 0, uniqHLL12(b) - 99 >= 0, uniqHLL12(c) - 99 >= 0)
FROM (SELECT * FROM decimal ORDER BY a);
