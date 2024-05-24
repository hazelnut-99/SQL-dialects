SELECT 'Pacific/Kwajalein', toDateTime('2020-01-02 03:04:05', 'Pacific/Kwajalein') AS x, toStartOfDay(x), toHour(x);
