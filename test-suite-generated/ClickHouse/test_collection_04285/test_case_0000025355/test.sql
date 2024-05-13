SELECT lower(hex(reverse(CAST(sipHash128('very_very_long_column_name_that_will_be_replaced_with_hash'), 'FixedString(16)'))));
