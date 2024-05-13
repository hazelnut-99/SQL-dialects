SELECT arrayStringConcat(groupArray(s), '\n:::::::\n'), count(), wordShingleMinHashCaseInsensitiveUTF8(s, 2, 3) as h FROM defaults GROUP BY h ORDER BY h;
