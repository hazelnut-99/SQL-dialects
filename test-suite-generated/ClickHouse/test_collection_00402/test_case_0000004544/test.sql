SELECT timeslot, sumMap(statusMap.status, statusMap.requests).1, sumMap(statusMap.status, statusMap.requests).2 FROM sum_map GROUP BY timeslot ORDER BY timeslot;
