select 
	l_extendedprice, 
	l_partkey, 
	l_orderkey, 
	sum(l_extendedprice) over(partition by l_partkey),
from lineitem 
order by l_partkey, l_orderkey;
