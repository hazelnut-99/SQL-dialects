SELECT arrayStringConcat(groupArray(s), '\n:::::::\n'), count(), wordShingleSimHashCaseInsensitiveUTF8(s, 2) as h FROM defaults GROUP BY h ORDER BY h;
