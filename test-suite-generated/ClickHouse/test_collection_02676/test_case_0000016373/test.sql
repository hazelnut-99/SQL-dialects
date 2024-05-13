SELECT toTypeName(res), sumMapMerge(s) as res FROM (SELECT sumMapState(statusMap) AS s FROM map_comb);
