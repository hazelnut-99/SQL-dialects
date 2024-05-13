select count(1), min(dt64_cs), max(dt64_cs) from file('02892.orc') where (dt64_cs between toDateTime64('-2.01e8'::Decimal64(1), 1) and toDateTime64(1.5e8::Decimal64(2), 2));
