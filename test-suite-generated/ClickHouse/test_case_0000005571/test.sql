SELECT DISTINCT arrayReduce('quantile(0.5)', [CAST(-1, 'UInt256'), CAST(-2, 'UInt256')]) FROM numbers(1000) LIMIT 10;
