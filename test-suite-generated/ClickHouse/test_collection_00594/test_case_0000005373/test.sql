SELECT endsWith(s, '') FROM (SELECT arrayJoin(['', 'h', 'hi']) AS s);
