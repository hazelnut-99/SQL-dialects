select match(materialize('\0 key="v" '), 'key="(.*?)"'), REGEXP_MATCHES(materialize('\0 key="v" '), 'key="(.*?)"');
