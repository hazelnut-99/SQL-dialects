select X.id, Y.id from X right join Y on (X.id + 1) = Y.id order by X.id, Y.id;
