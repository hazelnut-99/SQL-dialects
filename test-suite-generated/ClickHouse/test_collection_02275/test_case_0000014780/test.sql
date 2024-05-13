SELECT
    domain, arrayUniq(groupArraySample(5, 11111)(DISTINCT subdomain)) AS example_subdomains
FROM distinct_two_level
GROUP BY domain ORDER BY domain, example_subdomains
LIMIT 10;
