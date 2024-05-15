select
	CAST(x as DATE) = '2021-01-01' a,
	IF(CAST(x as DATE) = '2021-01-01', y, 0) b,
	CASE WHEN CAST(x as DATE) = '2021-01-01' THEN y ELSE 0 END c,
	IF(CAST(x as DATE) = '2021-01-01', 1, 0) d
from df;
