SELECT number + 1, dictGetFloat32OrDefault('db_01268.dict3', 'parent_region', toUInt64(number + 1), toFloat32(0)) chars FROM numbers(10);
