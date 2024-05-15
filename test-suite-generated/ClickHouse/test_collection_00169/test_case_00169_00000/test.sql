select `concat(str, \'_abc\')` from (with 'string' as str select str || '_abc');
