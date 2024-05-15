SELECT name, major FROM students s WHERE EXISTS(SELECT * FROM exams e WHERE e.sid=s.id AND grade=10) OR s.name='Dirk' ORDER BY name;
