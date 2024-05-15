drop table if exists url;
create table url (i String) engine=URL('http://127.0.0.1:8123?query=select+12', 'RawBLOB', headers('X-ClickHouse-Format'='JSONEachRow'));
