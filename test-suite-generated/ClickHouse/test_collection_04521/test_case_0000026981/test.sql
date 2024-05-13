SELECT
    hex(rightPadUTF8(toFixedString('abc34324' as s, 8), number, '🇪🇸')) as result,
    hex(rightPadUTF8(s, number, '🇪🇸')) = result
FROM numbers(20);
