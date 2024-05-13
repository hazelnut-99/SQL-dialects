select toYYYYMMDD(toDateTime(recordTimestamp, 'Europe/Amsterdam')), toDateTime(recordTimestamp, 'Europe/Amsterdam'), toInt64(1665519765) as recordTimestamp, toTypeName(recordTimestamp);
