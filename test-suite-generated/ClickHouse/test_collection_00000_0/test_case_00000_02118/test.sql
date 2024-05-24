SELECT x FROM (SELECT materialize(NULL) AS x) WHERE x;
