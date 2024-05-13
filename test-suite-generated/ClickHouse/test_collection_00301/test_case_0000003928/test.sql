SELECT x FROM (SELECT toNullable(materialize(1)) AS x) WHERE x;
