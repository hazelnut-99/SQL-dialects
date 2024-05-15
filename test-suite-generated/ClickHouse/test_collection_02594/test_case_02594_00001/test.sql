SELECT
    v,
    length(finalizeAggregation(CAST(unhex(state) AS AggregateFunction(argMax, String, UInt64))))
FROM argmaxstate_hex_small;
