SELECT column_name, column_type FROM (DESCRIBE unpivot ( select 42) on columns(*));
