select if(SrcAS in (select SrcAS from flows group by SrcAS order by sum(Bytes) desc limit 10) , SrcAS, 33) as SrcAS from flows where 2 == 2 order by SrcAS;
