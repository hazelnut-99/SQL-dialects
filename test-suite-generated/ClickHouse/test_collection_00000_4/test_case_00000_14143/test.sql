SELECT
    hex(rightPadUTF8(toFixedString('🇪🇸' as s, 8), number, 'Ñ')) as result,
    hex(rightPadUTF8(s, number, 'Ñ')) = result
FROM numbers(20);
