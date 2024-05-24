SELECT a.pk, b.pk, a.dt, b.dt, toTypeName(a.pk), toTypeName(b.pk), toTypeName(materialize(a.dt)), toTypeName(materialize(b.dt))
FROM (SELECT toUInt8(number) > 0 as pk, toNullable(toUInt8(number)) as dt FROM numbers(3)) a
ASOF JOIN (SELECT 1 as pk, toNullable(0) as dt) b
ON a.pk = b.pk AND a.dt >= b.dt
ORDER BY a.dt;
