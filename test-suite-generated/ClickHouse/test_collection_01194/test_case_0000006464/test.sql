select match('a key="v" ', 'key="(.*?)"'), REGEXP_MATCHES('a key="v" ', 'key="(.*?)"');
