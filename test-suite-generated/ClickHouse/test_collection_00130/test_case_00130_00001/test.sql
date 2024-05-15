SELECT length(groupUniqArrayMerge(ds)) FROM (SELECT k, groupUniqArrayState(d) AS ds FROM arena GROUP BY k) GROUP BY k;
