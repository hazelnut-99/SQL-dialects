WITH toDate(today() + rand() % 4096) AS t SELECT count() FROM numbers(1000000) WHERE formatDateTime(t, '%F') != toString(t);
