select multiMatchAny(materialize('\0 key="v" '), ['key="(.*?)"']);
