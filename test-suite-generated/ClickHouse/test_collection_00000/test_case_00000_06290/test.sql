select value % -9223372036854775808 from (select toInt32(arrayJoin([3, 5])) value);
