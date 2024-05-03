SELECT
    id,
    avgArgMaxMerge(state)
FROM argmax_comb
GROUP BY id
ORDER BY id ASC;;
