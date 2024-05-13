SELECT keycol, enum_col FROM table_with_enum FULL JOIN table_key USING (keycol) ORDER BY keycol;
