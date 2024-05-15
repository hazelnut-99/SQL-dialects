SELECT column_name, column_type FROM (DESCRIBE unpivot ( select {n : 1 }) on columns(*));
