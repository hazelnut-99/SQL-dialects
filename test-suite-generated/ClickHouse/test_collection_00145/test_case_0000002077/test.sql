SELECT s, replaceOne(s, '_', 'oo') AS a, replaceRegexpOne(s, '_', 'oo') AS b, a = b FROM (SELECT arrayJoin(['_._', '_._']) AS s);
