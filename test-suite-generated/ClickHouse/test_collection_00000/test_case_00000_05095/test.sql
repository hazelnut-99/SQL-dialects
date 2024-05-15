SELECT
toTypeName(dt64), toTypeName(dts64), toTypeName(dtms64)
FROM generateRandom('dt64 DateTime64(3, \'UTC\'), dts64 DateTime64(6, \'UTC\'), dtms64 DateTime64(6 ,\'UTC\')')
LIMIT 1;
