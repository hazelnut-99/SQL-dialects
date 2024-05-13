SELECT tuple(x, y) as key, dictGetOrDefault('polygon_dictionary', 'name', key, intDiv(1, y))
FROM points;
