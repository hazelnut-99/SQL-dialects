SELECT sum(multiplyDecimal(toDecimal64(number, 1), toDecimal64(number, 5))) FROM numbers(1000);
