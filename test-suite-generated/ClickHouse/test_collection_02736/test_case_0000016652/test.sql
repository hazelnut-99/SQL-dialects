SELECT hex(toString(uniqExactState(x))) FROM (SELECT quantileState(number) AS x FROM numbers(1000));
