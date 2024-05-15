SELECT toDate(d) FROM foo_c WHERE (d > toDate('2019-02-10')) AND (d <= toDate('2022-01-01')) ORDER BY d;
