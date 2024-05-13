select filesystemCapacity('default') >= filesystemAvailable('default') and filesystemAvailable('default') >= 0 and filesystemUnreserved('default') >= 0;
