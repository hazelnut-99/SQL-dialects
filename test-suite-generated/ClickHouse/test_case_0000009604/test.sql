SELECT
    hex(leftPad(toFixedString('abc34324' as s, 8), number)) as result,
    hex(leftPad(s, number)) = result,
    hex(leftPadUTF8(toFixedString(s, 8), number)) = result,
    hex(leftPadUTF8(s, number)) = result
FROM numbers(20);
