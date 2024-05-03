select 3 = windowFunnel(86400, 'strict_deduplication')(ts, event='a', event='b', event='c', event='d') from strict_BiteTheDDDD format JSONCompactEachRow;
