select countSubstringsCaseInsensitive(concat(toString(number), 'aaa111'), char(number)) from numbers(100) where number = 0x41;
