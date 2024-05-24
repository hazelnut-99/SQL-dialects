SELECT 693962 AS u, toInt32(u) AS s, fromDaysSinceYearZero32(u), fromDaysSinceYearZero32(materialize(u)), fromDaysSinceYearZero32(s), fromDaysSinceYearZero32(materialize(s));
