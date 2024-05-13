select (select sum(cityHash64(*)) from basic_types_02735) - (select sum(cityHash64(*)) from file(basic_types_02735.parquet));
