SELECT * FROM l full outer join r on l.luid = r.ruid
where  luid is null
  and ruid is not null;
