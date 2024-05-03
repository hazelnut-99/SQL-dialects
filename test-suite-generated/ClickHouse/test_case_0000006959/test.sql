select
        c_7_c4585_14 as c_4_c4593_5
      from
        (select
              avg(0) as c_7_c4572_1,
              max(-0) as c_7_c4585_14
            from
              t7 as ref_0
            group by ref_0.c_2_c46_1) as subq_0
where c_4_c4593_5 <= multiIf(true, 1, exp10(c_4_c4593_5) <= 1, 1, 1);
