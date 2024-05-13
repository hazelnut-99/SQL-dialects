SELECT id as shift_right_bit,str as arg,bin(bitShiftLeft(str, id)) as string_res FROM test_bit_shift_left_string_integer;
