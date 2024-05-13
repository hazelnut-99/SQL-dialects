select 
	l_extendedprice, 
	l_partkey, 
	l_orderkey, 
	sum(l_extendedprice) over(partition by l_partkey order by l_orderkey),
from lineitem 
order by l_partkey, l_orderkey;
