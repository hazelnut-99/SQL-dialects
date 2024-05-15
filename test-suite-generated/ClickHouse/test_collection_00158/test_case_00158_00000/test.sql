SELECT nest.a, nest.b, nested.`nest`.`a`, nested.nest.b, t.nest.a, t.nest.b, t.* FROM nested AS t;
