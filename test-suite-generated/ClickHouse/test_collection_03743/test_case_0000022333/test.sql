SELECT quantile(0.8)(a), toTypeName(quantile(0.8)(a)), quantile(0.9)(a), toTypeName(quantile(0.9)(a)) FROM fuse_tbl;
