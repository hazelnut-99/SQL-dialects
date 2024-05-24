select unhex('34') || ' key="v" ' as haystack, length(haystack), extract( haystack, 'key="(.*?)"') as needle;
