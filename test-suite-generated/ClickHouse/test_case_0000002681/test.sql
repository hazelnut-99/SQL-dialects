SELECT number, dictGet('executable_complex', 'a', (number, number)) AS a, dictGet('executable_complex', 'b', (number, number)) AS b FROM numbers(1000000) WHERE number = 999999;
