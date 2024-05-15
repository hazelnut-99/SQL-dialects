select _file, count() from url('http://127.0.0.1:8123/?query=select+1&user=default', LineAsString, 's String') group by _file;
