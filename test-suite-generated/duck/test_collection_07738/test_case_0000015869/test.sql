select avg(a) over (
    order by b asc
    rows between mod(b * 1023, 11) preceding and 23 - mod(b * 1023, 11) following)
from issue1697;
