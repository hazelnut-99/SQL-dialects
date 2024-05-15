select 'on exception while processing', arraySort(groupArray(n)) from (select n from mt1 union all select * from mt2);
