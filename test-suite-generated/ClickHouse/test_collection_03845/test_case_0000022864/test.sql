SELECT geoToH3(longitude,  latitude, toUInt8(longitude - longitude + 8)) AS h3Index FROM data_table ORDER BY 1;
