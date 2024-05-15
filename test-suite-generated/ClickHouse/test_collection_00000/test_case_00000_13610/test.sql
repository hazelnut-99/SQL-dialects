SELECT 719528 AS u, toInt32(u) AS s, fromDaysSinceYearZero(u), fromDaysSinceYearZero(materialize(u)), fromDaysSinceYearZero(s), fromDaysSinceYearZero(materialize(s));
