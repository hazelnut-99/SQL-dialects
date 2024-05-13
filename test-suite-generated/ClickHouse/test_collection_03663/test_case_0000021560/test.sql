select left_table.id,val_left, val_middle, val_right from left_table
                                                              inner join middle_table on left_table.id = middle_table.id
                                                              inner join right_table on middle_table.id = right_table.id
ORDER BY left_table.id, val_left, val_middle, val_right;
