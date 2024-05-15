SELECT  v.split(' ')::VARCHAR strings,
        strings.lower() lower,
        lower.upper() upper
FROM varchars;
