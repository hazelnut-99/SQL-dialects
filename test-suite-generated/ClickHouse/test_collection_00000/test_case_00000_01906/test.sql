SELECT q FROM (select [1,2,3] AS q UNION ALL select groupArray(arrayJoin([4,5,6])) AS q ORDER BY q) ORDER BY q;
