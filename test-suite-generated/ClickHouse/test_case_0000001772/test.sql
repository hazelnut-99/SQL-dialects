SELECT
    dictGet('null_dict', 'val', 1337),
    dictGetOrNull('null_dict', 'val', 1337),
    dictGetOrDefault('null_dict', 'val', 1337, 111),
    dictGetUInt8('null_dict', 'val', 1337),
    dictGetUInt8OrDefault('null_dict', 'val', 1337, 111);
