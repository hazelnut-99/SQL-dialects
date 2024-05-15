SELECT DISTINCT toDayOfWeek(toStartOfISOYear(toDate(10000 + rand64() % 20000))) FROM numbers(10000);
