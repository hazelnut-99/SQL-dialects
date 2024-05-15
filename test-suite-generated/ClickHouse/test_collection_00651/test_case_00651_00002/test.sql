select geoToH3(lon, lat, resolution) AS k from table1 order by lat, lon, k;
