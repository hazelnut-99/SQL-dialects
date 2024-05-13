select permno,
    sum(log(ret+1)) over (PARTITION BY permno ORDER BY date rows between 12 preceding and 2 preceding),
    ret
from issue1472
ORDER BY permno, date;
