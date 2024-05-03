SELECT s, replaceAll(s, '_', 'o') AS a, REGEXP_REPLACE(s, '_', 'o') AS b, a = b FROM (SELECT arrayJoin(['._', '.']) AS s);
