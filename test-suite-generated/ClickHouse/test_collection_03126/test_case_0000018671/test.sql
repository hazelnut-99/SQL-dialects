select uniqExact(m) from (select number, (number / 2)::UInt64 as m from numbers(10));
