select (select sum(cityHash64(*)) from arrays_02735) - (select sum(cityHash64(*)) from arrays_out_02735);
