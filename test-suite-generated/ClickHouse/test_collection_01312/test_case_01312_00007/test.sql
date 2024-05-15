SELECT a.* APPLY(toDate) EXCEPT(i, j) APPLY(any) from columns_transformers a;
