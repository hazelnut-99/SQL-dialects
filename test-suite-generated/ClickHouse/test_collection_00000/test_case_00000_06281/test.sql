SELECT arrayJoin([0, 1, 3, NULL]) AS x,  x = 0,  if(x = 0, 'x=0', 'x<>0') ORDER BY x;
