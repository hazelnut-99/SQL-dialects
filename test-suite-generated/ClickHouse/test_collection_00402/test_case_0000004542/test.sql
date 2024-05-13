SELECT sumMapMerge(s) FROM (SELECT sumMapState(statusMap.status, statusMap.requests) AS s FROM sum_map);
