SELECT row_number() OVER (ORDER BY unique2) rn FROM tenk1 WHERE unique2 < 10 ORDER BY rn;
