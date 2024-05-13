select i, j, k from (select columns(*)::VARCHAR from a full outer join b using (i)) order by 1;
