SELECT id FROM (SELECT arrayJoin([1, 2, 3]) AS id) WHERE id = 1;
