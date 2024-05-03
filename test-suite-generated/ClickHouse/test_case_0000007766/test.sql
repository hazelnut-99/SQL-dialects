select * from s3('http://localhost:11111/test/{a,b,c}.tsv', 'TSV') ORDER BY c1, c2, c3;
