SELECT (
	SELECT ref_1.nested_int_array
) AS c0
FROM range(3), nested AS ref_1;
