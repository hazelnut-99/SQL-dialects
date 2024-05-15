SELECT quantile(0.8)(b), toTypeName(quantile(0.8)(b)), quantile(0.1)(b), toTypeName(quantile(0.1)(b)) FROM fuse_tbl;
