SELECT toNullable(toInt32(2)) user_id WHERE joinGet(test_joinGet, 'name', user_id) != '';
