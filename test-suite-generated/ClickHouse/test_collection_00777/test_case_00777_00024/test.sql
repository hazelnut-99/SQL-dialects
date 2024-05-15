SELECT arrayStringConcat(groupArray(s), '\n:::::::\n'), count(), ngramMinHashCaseInsensitiveUTF8(s) as h FROM defaults GROUP BY h ORDER BY h;
