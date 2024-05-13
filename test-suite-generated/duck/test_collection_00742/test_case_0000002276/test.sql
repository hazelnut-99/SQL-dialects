select count(*) from range(1000) using sample reservoir(0.01%);
