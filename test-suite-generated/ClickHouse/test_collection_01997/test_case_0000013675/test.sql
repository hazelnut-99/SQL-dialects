SELECT count() FROM map_subcolumns PREWHERE arrayMax(m.values) > 3;
