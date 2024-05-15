with pow(2,2) as four select pow(four, 2), 2 as two, pow(two, 2);
with (select pow(two,2)) as four select pow(four, 2), 2 as two, pow(two, 2);
