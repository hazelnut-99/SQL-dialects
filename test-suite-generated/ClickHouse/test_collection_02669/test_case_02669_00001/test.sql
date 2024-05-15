SELECT
    dictGet('null_dict', 'default_val', 1337),
    dictGetOrNull('null_dict', 'default_val', 1337),
    dictGetOrDefault('null_dict', 'default_val', 1337, 111),
    dictGetUInt8('null_dict', 'default_val', 1337),
    dictGetUInt8OrDefault('null_dict', 'default_val', 1337, 111);
