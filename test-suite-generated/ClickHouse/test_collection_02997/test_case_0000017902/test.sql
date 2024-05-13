SELECT id as shift_right_bit,toFixedString('Hello', 10) as arg,bin(bitShiftRight(toFixedString('Hello', 10), id)) as fixed_string_res FROM test_bit_shift_right_string_integer;
