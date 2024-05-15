select geoToH3(lon, lat, resolution) AS k, count(*) from table1 group by k order by k;
