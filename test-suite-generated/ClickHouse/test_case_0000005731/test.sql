SELECT id as shift_right_bit,toFixedString('Hel', 10) as arg,bin(bitShiftRight(toFixedString('Hel', 10), id)) as fixed_string_res FROM test_bit_shift_right_string_integer;
