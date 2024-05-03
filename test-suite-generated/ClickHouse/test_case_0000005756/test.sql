WITH '{ "v":1.1}' AS raw
SELECT
    JSONExtract(raw, 'v', 'float') AS float32_1,
    JSONExtract(raw, 'v', 'Float32') AS float32_2,
    JSONExtractFloat(raw, 'v') AS float64_1,
    JSONExtract(raw, 'v', 'double') AS float64_2;
