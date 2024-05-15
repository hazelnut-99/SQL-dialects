SELECT id as shift_right_bit,toFixedString('Hel', 10) as arg,bin(bitShiftLeft(toFixedString('Hel', 10), id)) as fixed_string_res FROM test_bit_shift_left_string_integer;
