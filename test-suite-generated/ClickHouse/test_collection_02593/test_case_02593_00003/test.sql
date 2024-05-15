SELECT quantile(a - 1), quantile(b - 1) + 1, quantile(0.8)(b - 1) + 1, quantile(0.8)(b - 1) + 2, quantile(0.9)(b - 1) + 1 FROM fuse_tbl;
