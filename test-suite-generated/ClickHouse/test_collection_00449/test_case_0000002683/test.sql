SELECT number, dictGet('executable_simple', 'a', number) AS a, dictGet('executable_simple', 'b', number) AS b FROM numbers(1000000) WHERE number = 999999;
