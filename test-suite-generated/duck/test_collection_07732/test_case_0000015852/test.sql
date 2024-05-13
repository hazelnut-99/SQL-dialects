select timestamp
, median(laufzeit) over w
, count(*) over w
from flog
window w as (order by timestamp asc range between interval 55 seconds preceding and interval 58 seconds following)
order by 3 desc
limit 1;
