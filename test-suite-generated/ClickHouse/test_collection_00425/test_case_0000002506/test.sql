select unhex('00') || ' key="v" ' as haystack, length(haystack), extract( haystack, 'key="(.*?)"') as needle;
