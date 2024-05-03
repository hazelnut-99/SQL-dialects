SELECT result FROM (
    SELECT
        (lat, lon) AS input_geo,
        h3ToGeo(geoToH3(lat, lon, res)) AS output_geo,
        if(abs(input_geo.1 - output_geo.1) < 0.001 AND abs(input_geo.2 - output_geo.2) < 0.001, 'ok', 'fail') AS result
    FROM h3_geo
);
