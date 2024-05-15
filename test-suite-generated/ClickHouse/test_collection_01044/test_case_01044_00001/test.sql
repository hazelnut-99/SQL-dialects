select 'no nested', arraySort(groupArray(n)) from (select n from mt1 union all select * from mt2);
