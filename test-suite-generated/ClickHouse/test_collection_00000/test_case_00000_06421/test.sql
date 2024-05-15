SELECT arrayMap(x -> round(x, 4), groupArrayMovingAvg(256)(1)) FROM numbers(300);
