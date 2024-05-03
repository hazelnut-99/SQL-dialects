select (1 ? toFixedString('abc' as s, 3) : 'def') = s;
