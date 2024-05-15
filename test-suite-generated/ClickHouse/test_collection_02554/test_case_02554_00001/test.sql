select left_table.id,val_left, val_middle, val_right from left_table
                                                              inner join middle_table on left_table.id = middle_table.id
                                                              inner join (SELECT * FROM right_table WHERE id = 1) r on middle_table.id = r.id
ORDER BY left_table.id, val_left, val_middle, val_right;
