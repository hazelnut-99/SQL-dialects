SELECT 8 as shift_right_bit,fixedStr as arg,bin(bitShiftLeft(fixedStr, 8)) as fixed_string_res FROM test_bit_shift_left_string_integer;
