SELECT toTypeName(stat_standard_id) AS stat_standard_id_1, count(1) AS value
FROM ( SELECT 'string value' AS stat_standard_id )
GROUP BY stat_standard_id_1 LIMIT 1
