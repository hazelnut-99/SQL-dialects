WITH arrayJoin(['192.168.99.255', '192.168.100.1', '192.168.103.255', '192.168.104.0']) as addr, '192.168.100.0/22' as prefix SELECT addr, prefix, isIPAddressInRange(addr, prefix);
WITH arrayJoin(['::192.168.99.255', '::192.168.100.1', '::192.168.103.255', '::192.168.104.0']) as addr, '::192.168.100.0/118' as prefix SELECT addr, prefix, isIPAddressInRange(addr, prefix);
WITH '192.168.100.1' as addr, arrayJoin(['192.168.100.0/22', '192.168.100.0/24', '192.168.100.0/32']) as prefix SELECT addr, prefix, isIPAddressInRange(addr, prefix);
WITH '::192.168.100.1' as addr, arrayJoin(['::192.168.100.0/118', '::192.168.100.0/120', '::192.168.100.0/128']) as prefix SELECT addr, prefix, isIPAddressInRange(addr, prefix);
WITH arrayJoin(['192.168.100.1', '192.168.103.255']) as addr, arrayJoin(['192.168.100.0/22', '192.168.100.0/24']) as prefix SELECT addr, prefix, isIPAddressInRange(addr, prefix);
WITH arrayJoin(['::192.168.100.1', '::192.168.103.255']) as addr, arrayJoin(['::192.168.100.0/118', '::192.168.100.0/120']) as prefix SELECT addr, prefix, isIPAddressInRange(addr, prefix);
DROP TABLE IF EXISTS test_data;
CREATE TABLE test_data (cidr String) ENGINE = Memory;
