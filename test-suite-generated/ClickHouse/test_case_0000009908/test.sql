select splitByRegexp('\\d+', x) from (select arrayJoin(['a1ba5ba8b', 'a11ba5689ba891011b']) x);
