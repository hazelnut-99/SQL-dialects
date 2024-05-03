SELECT length(topK(3)(A)) FROM remote('localhost,127.0.0.1', currentDatabase(), topXtest);
