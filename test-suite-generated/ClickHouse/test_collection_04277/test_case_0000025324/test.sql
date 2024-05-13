SELECT toString((SELECT materialize(date) FROM Dates), number % 2 ? 'America/Los_Angeles' : 'Europe/Amsterdam') FROM numbers(5);
