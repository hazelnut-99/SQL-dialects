select toYYYYMMDD(toDate(recordTimestamp, 'Europe/Amsterdam')), toDate(recordTimestamp, 'Europe/Amsterdam'), toUInt64(1665519765) as recordTimestamp, toTypeName(recordTimestamp);
