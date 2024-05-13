SELECT i, j, COLUMNS(i, j, k) APPLY(toFloat64), COLUMNS(i, j) EXCEPT (i) from columns_transformers;
