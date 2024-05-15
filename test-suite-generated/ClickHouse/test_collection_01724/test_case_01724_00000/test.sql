select * from mt where toUInt64(substr(_part, 1, position(_part, '_') - 1)) = 1;
