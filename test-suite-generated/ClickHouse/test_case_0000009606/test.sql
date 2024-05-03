SELECT
    hex(leftPadUTF8(toFixedString('abc34324' as s, 8), number, '🇪🇸')) as result,
    hex(leftPadUTF8(s, number, '🇪🇸')) = result
FROM numbers(20);
