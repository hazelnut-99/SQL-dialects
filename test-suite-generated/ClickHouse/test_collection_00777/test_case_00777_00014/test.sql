SELECT arrayStringConcat(groupArray(s), '\n:::::::\n'), count(), wordShingleSimHashUTF8(s, 2) as h FROM defaults GROUP BY h ORDER BY h;
