SELECT arrayStringConcat(groupArray(s), '\n:::::::\n'), count(), ngramSimHashCaseInsensitiveUTF8(s) as h FROM defaults GROUP BY h ORDER BY h;
