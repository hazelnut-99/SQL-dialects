SELECT a.* APPLY(toDate) REPLACE(i + 1 AS i) APPLY(any) from columns_transformers a;
