select toYYYYMMDD(toDate32(recordTimestamp, 'Europe/Amsterdam')), toDate32(recordTimestamp, 'Europe/Amsterdam'), toInt64(1665519765) as recordTimestamp, toTypeName(recordTimestamp);
