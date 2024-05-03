WITH
    A as (SELECT rowNumberInAllBlocks() R, addDays(toDate('2017-04-01'), R) TVV from numbers(5)),
    B as (SELECT rowNumberInAllBlocks() R, toDateTime(NULL) TVV from numbers(1))
SELECT
    joinGetOrNull('test', 'y', toDate(A.TVV) ) TV1
from A LEFT JOIN B USING (R) order by TV1;
