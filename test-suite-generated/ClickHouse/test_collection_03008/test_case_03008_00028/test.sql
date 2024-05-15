select count(), sum(number) from file('02892.orc') where indexHint(f32 between -0.11::Float32 and 0.06::Float32);
