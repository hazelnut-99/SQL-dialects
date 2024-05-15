SELECT DISTINCT substring(toString(range(rand(1) % 50)), -(rand(2) % 50)) = substringUTF8(toString(range(rand(1) % 50)), -(rand(2) % 50)) AS res FROM numbers(1000000);
