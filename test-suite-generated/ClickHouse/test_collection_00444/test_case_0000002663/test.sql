SELECT '1,,' == replaceRegexpOne(',,1,,', '^[,]*|[,]*$', '') x;
