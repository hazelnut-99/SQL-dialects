SELECT materialize('01234567-89ab-cdef-0123-456789abcdef') AS str, UUIDNumToString(UUIDStringToNum(str)), UUIDNumToString(UUIDStringToNum(toFixedString(str, 36)));
