SELECT s, replaceAll(s, '_', 'o') AS a, replaceRegexpAll(s, '_', 'o') AS b, a = b FROM (SELECT arrayJoin(['__.', '.__']) AS s);
