select splitByString(', ', x) from (select arrayJoin(['hello, world', 'gbye, bug']) x);
