SELECT materialize(1) AS k WHERE NULL OR (0 OR (k = 2) OR (k = CAST(1, 'Nullable(UInt8)') OR k = 3));
