SELECT count() FROM (SELECT arrayJoin([sum(x), medianExact(x)]), arrayJoin([min(x), max(x)]) FROM (SELECT number AS x FROM numbers(10)));
