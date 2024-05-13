SELECT arrayJoin(CAST($$['Hello', 'wo\'rld\\']$$ AS Array(String))) AS x, CAST($$wo\'rld\\$$ AS FixedString(9)) AS y;
