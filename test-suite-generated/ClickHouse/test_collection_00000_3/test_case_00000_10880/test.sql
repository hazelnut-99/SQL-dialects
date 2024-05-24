select toYYYYMMDD(toDateTime(recordTimestamp, 'Europe/Amsterdam')), toDateTime(recordTimestamp, 'Europe/Amsterdam'), toFloat32(1665519765) as recordTimestamp, toTypeName(recordTimestamp);
