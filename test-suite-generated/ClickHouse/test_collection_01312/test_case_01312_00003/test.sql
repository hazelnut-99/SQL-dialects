SELECT a.* APPLY(toDate) APPLY(any) from columns_transformers a;
