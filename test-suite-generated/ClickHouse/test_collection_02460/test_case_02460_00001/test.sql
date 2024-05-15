select count(*) from dat where eventTimestamp >= (select eventTimestamp from datDictionary);
