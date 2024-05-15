SELECT (WITH keys AS (
    		SELECT example AS k
    	), nonNull AS (
    		SELECT keys.k, example AS v
    		FROM keys
    		WHERE v IS NOT NULL
    	)
    	SELECT nonNull.v
    	FROM nonNull
)
FROM tbl;
