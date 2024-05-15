SELECT
    (SELECT hex(argMaxState('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz', number)) FROM numbers(1)) = state
FROM argmaxstate_hex_large
WHERE v = '22.8.5.29';
