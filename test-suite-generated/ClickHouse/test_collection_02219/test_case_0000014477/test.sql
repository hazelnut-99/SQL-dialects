select countSubstringsCaseInsensitive(concat(toString(number), 'aaa111aa1'), char(number)) from numbers(100) where number = 0x41;
