select X.id, Y.id from X right join Y on X.id = (Y.id - 1) order by X.id, Y.id;
