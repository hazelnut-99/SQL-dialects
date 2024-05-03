SELECT s, replaceAll(s, '_', 'oo') AS a, replaceRegexpAll(s, '_', 'oo') AS b, a = b FROM (SELECT arrayJoin(['_._', '_._']) AS s);
