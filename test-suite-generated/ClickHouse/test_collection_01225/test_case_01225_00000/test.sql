SELECT *,UserID = 0 as UserIDEquals0, if(UserID = 0, 'delete', 'leave') as verdict FROM mutation_delete_null_rows ORDER BY EventDate;
