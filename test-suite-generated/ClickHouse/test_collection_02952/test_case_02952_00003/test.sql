SELECT 1000000 IN (SELECT materialize(getSetting('max_threads')));
