SELECT
    hex(leftPadUTF8(toFixedString('🇪🇸' as s, 8), number, 'Ñ')) as result,
    hex(leftPadUTF8(s, number, 'Ñ')) = result
FROM numbers(20);
