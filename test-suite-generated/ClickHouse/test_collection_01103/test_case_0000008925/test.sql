SELECT lon/5 - 180 AS lon1, lat/5 - 90 AS lat1, lon1 AS lon2, lat1 AS lat2, geohashesInBox(lon1, lat1, lon2, lat2, 1)  AS g
FROM (SELECT arrayJoin(range(360*5)) AS lon,  arrayJoin(range(180*5)) AS lat) WHERE length(g) != 1;
