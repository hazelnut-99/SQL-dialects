SELECT s, replaceOne(s, '_', 'o') AS a, replaceRegexpOne(s, '_', 'o') AS b, a = b FROM (SELECT arrayJoin(['_._', '._']) AS s);
