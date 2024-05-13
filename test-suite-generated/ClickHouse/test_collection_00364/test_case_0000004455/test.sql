SELECT id FROM s WHERE pointInPolygon((lng,lat), (select shape from p where polygon_id = 8));
