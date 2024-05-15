with generateUUIDv4() as uuid,
    replace(toString(uuid), '-', '') as str1,
    lower(hex(uuid)) as str2
select str1 = str2;
