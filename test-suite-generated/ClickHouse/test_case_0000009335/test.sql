SELECT tv.key, toString(tv.t, 'UTC'), md.bid, tv.tv, md.ask FROM tv ASOF LEFT JOIN md USING(key,t) ORDER BY (tv.key, tv.t);
