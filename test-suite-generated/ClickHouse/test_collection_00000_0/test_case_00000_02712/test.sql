SELECT count() FROM (SELECT sum(x), arrayJoin([min(x), max(x)]) FROM (SELECT number AS x FROM numbers(10)));
