SELECT arrayStringConcat(groupArray(s), '\n:::::::\n'), count(), wordShingleMinHashCaseInsensitive(s, 2, 3) as h FROM defaults GROUP BY h ORDER BY h;
