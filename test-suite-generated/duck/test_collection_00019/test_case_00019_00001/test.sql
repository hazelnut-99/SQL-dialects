SELECT  v.trim('><') as trim_inequality,
        trim_inequality.replace('%', '') as only_alphabet,
        only_alphabet.lower() as lower
FROM varchars;
