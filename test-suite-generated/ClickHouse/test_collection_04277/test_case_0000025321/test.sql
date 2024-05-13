SELECT formatDateTime((SELECT date FROM Dates), '%H%i%S', number % 2 ? 'America/Los_Angeles' : 'Europe/Amsterdam') FROM numbers(5);
