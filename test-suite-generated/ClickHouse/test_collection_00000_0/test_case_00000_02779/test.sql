SELECT startsWith(s, '') FROM (SELECT arrayJoin(['', 'h', 'hi']) AS s);
