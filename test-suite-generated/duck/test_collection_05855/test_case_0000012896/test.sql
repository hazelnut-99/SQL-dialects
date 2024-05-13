SELECT COUNT(*) FROM integers WHERE i=(select i from storage order by j limit 1);
