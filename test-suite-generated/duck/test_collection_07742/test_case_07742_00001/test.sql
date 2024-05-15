select
    *,
    array_agg(col) over(partition by id order by col collate nocase) as lead_col_nocase
from (
	select 
		unnest(array[1, 1, 1, 1]) as id, 
		unnest(array['A', 'a', 'b', 'B']) as col
);
