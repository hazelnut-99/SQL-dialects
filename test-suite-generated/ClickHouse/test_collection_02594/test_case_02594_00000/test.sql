SELECT
    (SELECT hex(argMaxState('0123456789', number)) FROM numbers(1)) = state
FROM argmaxstate_hex_small
WHERE v = '22.8.5.29';
