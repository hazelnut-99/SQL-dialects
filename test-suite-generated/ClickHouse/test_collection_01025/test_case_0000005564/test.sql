SELECT DISTINCT arrayReduce('quantiles(0.5)', []::Array(Float64)) FROM numbers(1000) LIMIT 10;
