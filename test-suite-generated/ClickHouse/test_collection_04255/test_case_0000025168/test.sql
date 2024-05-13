select count(), sum(number) from file('02841.parquet') where indexHint(dt64_s between toDateTime64('-2.01e8'::Decimal64(0), 0) and toDateTime64(1.5e8::Decimal64(0), 0));
