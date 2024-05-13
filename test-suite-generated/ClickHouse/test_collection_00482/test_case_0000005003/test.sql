select id, id2, val, val2, created
from ( SELECT toUInt64(arrayJoin(range(50))) AS id2 ) js1
SEMI LEFT JOIN joinbug_join using id2;
