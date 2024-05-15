SELECT length(topK(30)(A)) FROM remote('localhost,127.0.0.1', currentDatabase(), topXtest);
