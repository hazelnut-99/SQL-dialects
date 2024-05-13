SELECT timeslot, sumMap(statusMap.status, statusMap.requests) FROM sum_map GROUP BY timeslot ORDER BY timeslot;
