SELECT s, replaceAll(s, '_', 'oo') AS a, REGEXP_REPLACE(s, '_', 'oo') AS b, a = b FROM (SELECT arrayJoin(['_.', '_._']) AS s);
