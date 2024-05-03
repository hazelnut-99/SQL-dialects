SELECT length(groupUniqArray(10000)(d)), length(groupUniqArray(10000)(dt)) FROM grop_uniq_array_date GROUP BY id ORDER BY id;
