SELECT toTypeName(uniqExactState(x)) FROM (SELECT quantileState(number) AS x FROM numbers(1000));
