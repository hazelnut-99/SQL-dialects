select match(materialize('a key="v" '), 'key="(.*?)"'), REGEXP_MATCHES(materialize('a key="v" '), 'key="(.*?)"');
