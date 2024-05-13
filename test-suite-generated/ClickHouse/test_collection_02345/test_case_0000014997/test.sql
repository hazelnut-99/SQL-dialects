SELECT keycol, enum_col FROM table_key LEFT JOIN table_with_enum USING (keycol) ORDER BY keycol;
