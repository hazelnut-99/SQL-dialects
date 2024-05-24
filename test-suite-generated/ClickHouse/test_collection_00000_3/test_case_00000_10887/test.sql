select toYYYYMMDD(toDateTime64(recordTimestamp, 3, 'Europe/Amsterdam')), toDateTime64(recordTimestamp, 3, 'Europe/Amsterdam'), toFloat64(1665519765) as recordTimestamp, toTypeName(recordTimestamp);
