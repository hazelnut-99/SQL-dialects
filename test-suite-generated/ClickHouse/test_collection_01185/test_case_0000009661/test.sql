SELECT arrayStringConcat(groupArray(s), '\n:::::::\n'), count(), ngramMinHash(s) as h FROM defaults GROUP BY h ORDER BY h;
