SELECT count() OVER dummy WINDOW dummy AS (PARTITION BY dummy);
