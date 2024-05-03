SELECT
    dictGet('null_dict', 'nullable_val', 1337),
    dictGetOrNull('null_dict', 'nullable_val', 1337),
    dictGetOrDefault('null_dict', 'nullable_val', 1337, 111);
