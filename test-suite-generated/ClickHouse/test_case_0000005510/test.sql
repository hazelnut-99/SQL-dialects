SELECT avgWeighted(10, 100) FROM remote('127.0.0.{2,3}', currentDatabase(), dummy);
