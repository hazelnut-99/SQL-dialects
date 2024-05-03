select X.*, Y.* from X left join Y using id order by X.id, Y.id, X.x_name, Y.y_name;
