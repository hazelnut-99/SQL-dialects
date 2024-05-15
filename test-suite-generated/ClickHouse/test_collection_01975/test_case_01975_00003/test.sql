SELECT dictGetOrDefault('ip_trie_dictionary', 'array_value', tuple(IPv4StringToNum('128.0.0.0')), [2,3,4]);
