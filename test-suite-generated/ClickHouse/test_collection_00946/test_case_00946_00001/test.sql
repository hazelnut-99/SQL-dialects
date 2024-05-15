SELECT cast(null AS Nullable(Int32)) user_id WHERE joinGet(test_joinGet, 'name', user_id) != '';
