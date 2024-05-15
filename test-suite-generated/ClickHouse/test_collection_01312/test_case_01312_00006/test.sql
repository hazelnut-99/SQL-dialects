SELECT columns_transformers.* EXCEPT(j) APPLY(avg) from columns_transformers;
