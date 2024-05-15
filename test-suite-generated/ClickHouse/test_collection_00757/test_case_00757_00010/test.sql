select X.id, Y.id from X full join Y on Y.id = (X.id + 1) order by X.id, Y.id;
