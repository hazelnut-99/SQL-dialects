select transform('a', ['a', 'b'], [toDateTime64(1, 3, 'UTC'), toDateTime64(2, 3, 'UTC')], toDateTime64(0, 3, 'UTC'));
