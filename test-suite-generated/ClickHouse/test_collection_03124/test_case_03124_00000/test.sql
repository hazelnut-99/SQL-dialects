SELECT topKMerge(4, 2, 'counts')(state) FROM ( SELECT topKState(4, 2, 'counts')(countDigits(number * number)) AS state FROM numbers(1000));
