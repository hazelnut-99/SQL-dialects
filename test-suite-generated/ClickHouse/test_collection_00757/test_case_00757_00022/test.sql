select X.id, Y.id from X full join Y on (Y.id - 1) = X.id order by X.id, Y.id;
