SELECT toDate(d) AS dd FROM foo_c WHERE (dd >= '2019-02-06') AND (toDate(d) <= toDate('2019-08-09')) GROUP BY dd ORDER BY dd;
