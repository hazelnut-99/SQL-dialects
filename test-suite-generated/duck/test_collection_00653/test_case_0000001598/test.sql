select i, j, k, l from (select columns(*)::VARCHAR from a full outer join b using (i) full outer join c using (i)) order by 1;
