with generateUUIDv4() as uuid,
    identity(lower(hex(reverse(reinterpretAsString(uuid))))) as str,
    reinterpretAsUUID(reverse(unhex(str))) as uuid2
select uuid = uuid2;
