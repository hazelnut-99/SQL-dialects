SELECT avgWeighted(toInt8(100), -1) FROM remote('127.0.0.{2,3}', currentDatabase(), dummy);
