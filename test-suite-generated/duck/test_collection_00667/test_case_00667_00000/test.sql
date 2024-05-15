SELECT Country, Name, "2000_total_pop", "2010_total_pop", "2020_total_pop" FROM (PIVOT Cities ON Year USING SUM(Population) as total_pop);
