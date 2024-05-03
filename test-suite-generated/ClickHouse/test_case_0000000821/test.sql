SELECT any([[[number]],[[number + 1], [number + 2, number + 3]]]) AS k FROM remote('127.0.0.{1,2}', numbers(10));
