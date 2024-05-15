select 
	l_extendedprice, 
	l_partkey, 
	l_orderkey, 
	sum(l_extendedprice) over(order by l_partkey, l_orderkey), 
from lineitem 
order by l_partkey, l_orderkey;
