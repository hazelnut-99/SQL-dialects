WITH '2020-02-05 14:34:12.333' as S, toDateTime64(S, 3) as DT64 SELECT DT64 = S;
WITH '2020-02-05 14:34:12.333' as S, toDateTime64(S, 3) as DT64 SELECT S = DT64;
WITH '2020-02-05 14:34:12.333' as S, toDateTime64(S, 3) as DT64 SELECT materialize(DT64) = S;
WITH '2020-02-05 14:34:12.333' as S, toDateTime64(S, 3) as DT64 SELECT S = materialize(DT64);
WITH '2020-02-05 14:34:12.333' as S, toDateTime64(S, 3) as DT64 SELECT * WHERE DT64 = S;
WITH '2020-02-05 14:34:12.333' as S, toDateTime64(S, 3) as DT64 SELECT * WHERE S = DT64;
WITH '2020-02-05 14:34:12.333' as S, toDateTime64(S, 3) as DT64 SELECT * WHERE materialize(DT64) = S;
WITH '2020-02-05 14:34:12.333' as S, toDateTime64(S, 3) as DT64 SELECT * WHERE S = materialize(DT64);
