SELECT id AS sparse_id, row_number() OVER () AS rnum
FROM vertices_view;
