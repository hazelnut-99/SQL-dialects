select X.*, Y.* from X inner join Y on X.id = Y.id order by X.id, X.x_a, X.x_b, Y.id, Y.y_a, Y.y_b;
