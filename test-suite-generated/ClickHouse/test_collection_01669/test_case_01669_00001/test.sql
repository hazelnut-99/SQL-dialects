select min(dt), max(dt), count(toDate(dt) >= '2021-10-25') from d where toDate(dt) >= '2021-10-25';
