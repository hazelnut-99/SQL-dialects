select (select sum(cityHash64(*)) from nullables_02735) - (select sum(cityHash64(*)) from file(nullables_02735.parquet));
