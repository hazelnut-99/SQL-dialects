SELECT keycol, enum_col FROM table_key FULL JOIN table_with_enum USING (keycol) ORDER BY keycol;
