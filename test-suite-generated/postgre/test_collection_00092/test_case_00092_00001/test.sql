select * from (values(1)) x(lb),
  lateral (values(lb)) y(lbcopy);
