SELECT sumMapFilteredMerge([1, 2])(*) FROM remote('127.0.0.{1,2}', view(SELECT sumMapFilteredState([1, 2])([1, 2, 3], [10, 10, 10])));
