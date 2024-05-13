SELECT any(number) RESPECT NULLS from (Select NULL::Nullable(UInt8) as number FROM numbers(10));
