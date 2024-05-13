SELECT id as shift_right_bit,fixedStr as arg,bin(bitShiftRight(fixedStr, id)) as fixed_string_res FROM test_bit_shift_right_string_integer;
