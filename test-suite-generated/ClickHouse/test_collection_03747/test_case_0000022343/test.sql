SELECT
    (SELECT hex(argMaxState('', number)) FROM numbers(1)) = state
FROM argmaxstate_hex_empty
WHERE v = '22.8.5.29';
