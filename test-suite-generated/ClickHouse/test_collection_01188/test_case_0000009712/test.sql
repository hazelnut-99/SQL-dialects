SELECT arrayStringConcat(groupArray(s), '\n:::::::\n'), count(), ngramSimHash(s) as h FROM defaults GROUP BY h ORDER BY h;
