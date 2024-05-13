SELECT x::VARCHAR IN ('1', y::VARCHAR) FROM (VALUES (1, 2), (2, 3)) tbl(x, y);
