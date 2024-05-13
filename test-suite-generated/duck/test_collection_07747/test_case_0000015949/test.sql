select count(*) 
from (
	select percent_rank() over (partition by d order by v1) as rank_v1 
	from df
);
