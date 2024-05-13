select count(1), min(dt64_s), max(dt64_s) from file('02892.orc') where (dt64_s between toDateTime64('-2.01e8'::Decimal64(0), 0) and toDateTime64(1.5e8::Decimal64(0), 0));
