SELECT CAST(materialize(CAST(1, 'Nullable(Enum(\'A\' = 1, \'B\' = 2))')), 'Nullable(String)');
