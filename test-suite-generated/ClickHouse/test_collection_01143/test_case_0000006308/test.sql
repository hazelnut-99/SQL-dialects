WITH toDateTime(1 + rand() % 0xFFFFFFFF) AS t SELECT count() FROM numbers(1000000) WHERE formatDateTime(t, '%F %T') != toString(t);
