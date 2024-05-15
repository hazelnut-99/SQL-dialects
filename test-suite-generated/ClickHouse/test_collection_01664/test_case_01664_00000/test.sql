select dim1, dim2, count() from test group by dim1, dim2 with rollup order by dim1, dim2, count();
