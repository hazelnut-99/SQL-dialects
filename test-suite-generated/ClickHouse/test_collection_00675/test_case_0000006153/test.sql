SELECT quantile(a) as qa, quantile(b) as qb, quantile(c) as qc, toTypeName(qa),toTypeName(qb),toTypeName(qc) FROM decimal WHERE a < 0;
