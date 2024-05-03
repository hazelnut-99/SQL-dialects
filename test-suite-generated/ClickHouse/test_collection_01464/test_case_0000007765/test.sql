select * from s3('http://localhost:11111/test/{a,b,c}.tsv') ORDER BY c1, c2, c3;
