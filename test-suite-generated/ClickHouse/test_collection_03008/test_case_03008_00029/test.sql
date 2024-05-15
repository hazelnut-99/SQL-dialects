select count(1), min(f32), max(f32) from file('02892.orc') where (f32 between -0.11::Float32 and 0.06::Float32);
