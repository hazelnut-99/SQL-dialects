select _path, _file, s from url('http://127.0.0.1:8123/?query=select+1&user=default', LineAsString, 's String');
