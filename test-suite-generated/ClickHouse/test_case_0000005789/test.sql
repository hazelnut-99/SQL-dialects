SELECT DISTINCT decodeURLComponent(encodeURLComponent(randomString(100) AS x)) = x FROM numbers(100000);
