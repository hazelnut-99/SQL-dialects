SELECT (k = 3) OR ( (k = 1) OR (k = 2) OR ( (NULL OR 1) = k ) ) FROM ( SELECT materialize(1) AS k );
