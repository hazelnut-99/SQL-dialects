select * from (select * from bug where k=1 or k=2 or k=3) where (s=21 or s=22 or s=23);
