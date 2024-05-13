select 1 union all select 2  except (select 2 except select 1 union all select 1) except select 4;
