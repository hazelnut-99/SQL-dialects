SELECT
    conversion.conversionId AS myConversionId,
    click.clickId AS myClickId,
    click.myValue AS myValue
FROM (
    SELECT conversionId, value as myValue
    FROM test_01392.tableConversion
) AS conversion
INNER JOIN (
    SELECT clickId, conversionId, value as myValue
    FROM test_01392.tableClick
) AS click ON click.conversionId = conversion.conversionId
LEFT JOIN (
    SELECT * FROM test_01392.leftjoin
) AS dummy ON (dummy.id = conversion.conversionId)
ORDER BY myValue;
