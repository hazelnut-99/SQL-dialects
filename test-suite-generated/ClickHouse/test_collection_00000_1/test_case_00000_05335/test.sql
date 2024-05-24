SELECT arrayJoin([5, 25]) IN (SELECT DISTINCT toUInt8(intDiv(number, 10)) FROM numbers(190));
