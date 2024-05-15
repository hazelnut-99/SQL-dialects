SELECT
    v1.id,
    v2.id,
    L1Distance(v1.v, v2.v),
    LinfDistance(v1.v, v2.v),
    LpDistance(v1.v, v2.v, 3.1),
    L2Distance(v1.v, v2.v),
    L2SquaredDistance(v1.v, v2.v),
    cosineDistance(v1.v, v2.v)
FROM vec2 v1, vec2 v2
WHERE length(v1.v) == length(v2.v);
