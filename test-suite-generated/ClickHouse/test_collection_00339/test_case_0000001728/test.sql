SELECT arrayMap(x -> concat(x, concat(arrayJoin([1]), x, NULL), ''), [1]);
