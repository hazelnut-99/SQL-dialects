SELECT arrayStringConcat(groupArray(s), '\n:::::::\n'), count(), ngramMinHashCaseInsensitive(s) as h FROM defaults GROUP BY h ORDER BY h;
