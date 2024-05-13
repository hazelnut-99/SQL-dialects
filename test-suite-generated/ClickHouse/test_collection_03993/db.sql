with arrayJoin([0, 1, 2, 10]) as x select quantilesGK(100, 0.5, 0.4, 0.1)(x);
with arrayJoin([0, 6, 7, 9, 10]) as x select quantileGK(100, 0.5)(x);
