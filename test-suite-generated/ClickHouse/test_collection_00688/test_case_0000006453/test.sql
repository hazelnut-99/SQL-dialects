select * from persons all inner join (select * from children) as j using id order by id, name, childName;
