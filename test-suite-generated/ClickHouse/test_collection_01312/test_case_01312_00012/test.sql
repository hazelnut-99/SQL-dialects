SELECT columns_transformers.* REPLACE(j + 2 AS j, i + 1 AS i) APPLY(avg) from columns_transformers;
