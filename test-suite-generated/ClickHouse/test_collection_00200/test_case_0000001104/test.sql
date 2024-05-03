SELECT if(number % 2, materialize(9223372036854775806), materialize(-9223372036854775808)) AS res FROM numbers(2);
