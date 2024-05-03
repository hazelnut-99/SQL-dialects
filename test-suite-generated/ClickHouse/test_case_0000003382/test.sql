SELECT s, replaceOne(s, '_', 'o') AS a, replaceRegexpOne(s, '_', 'o') AS b, a = b FROM (SELECT arrayJoin(['.', '.']) AS s);
