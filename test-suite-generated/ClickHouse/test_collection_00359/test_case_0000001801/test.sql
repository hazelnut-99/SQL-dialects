WITH A as (SELECT rowNumberInAllBlocks() R,addDays(toDate('2021-05-18'), R) TVV from numbers(5)),
    B as (SELECT rowNumberInAllBlocks() R,toDateTime(NULL) TVV from numbers(1))
SELECT
    joinGet('DATE_INFO_DICT',  'SHAMSI',   toDate(A.TVV) ) TV1,
    substr(TV1, 3,  8) || ' : ' || toString(1) TV_CHAR_1
from A LEFT JOIN B USING (R)
ORDER BY TV1;
