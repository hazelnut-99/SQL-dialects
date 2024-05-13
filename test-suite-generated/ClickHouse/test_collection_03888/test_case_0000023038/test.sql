SELECT col2, col2 + 1 FROM test1
FULL OUTER JOIN test2 USING (col1)
PREWHERE (col2 * 2) :: UInt8
;
