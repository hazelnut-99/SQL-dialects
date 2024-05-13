select x as c
      from
        (select 1 AS k,
              max(0) as a,
              max(-0) as x
            from
              t7 GROUP BY k)
where NOT ignore(c);
