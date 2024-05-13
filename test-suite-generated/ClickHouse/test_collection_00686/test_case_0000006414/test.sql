select X.*, Y.* from X left join Y on (X.id + 1) = (Y.id + 1) order by X.id, X.x_a, X.x_b, Y.id, Y.y_a, Y.y_b;
