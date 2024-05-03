WITH
    [(39.82535, 21.26649), (39.63179, 21.4366), (39.94803, 21.56766)] AS outer,
    [(39.84994, 21.44025), (39.82728, 21.4666), (39.82667, 21.46592)] AS inner,
    (39.840202, 21.451471) AS point
SELECT
    pointInPolygon(point, inner) AS inside_inner,
    pointInPolygon(point, outer, inner) AS inside_outer;
