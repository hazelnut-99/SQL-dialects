CREATE TABLE a_star (
	class		char,
	a 			int4
);
CREATE TABLE b_star (
	b 			text
) INHERITS (a_star);
CREATE TABLE c_star (
	c 			name
) INHERITS (a_star);
CREATE TABLE d_star (
	d 			float8
) INHERITS (b_star, c_star);
CREATE TABLE e_star (
	e 			int2
) INHERITS (c_star);
CREATE TABLE f_star (
	f 			polygon
) INHERITS (e_star);
INSERT INTO a_star (class, a) VALUES ('a', 1);
INSERT INTO a_star (class, a) VALUES ('a', 2);
INSERT INTO a_star (class) VALUES ('a');
INSERT INTO b_star (class, a, b) VALUES ('b', 3, 'mumble'::text);
INSERT INTO b_star (class, a) VALUES ('b', 4);
INSERT INTO b_star (class, b) VALUES ('b', 'bumble'::text);
INSERT INTO b_star (class) VALUES ('b');
INSERT INTO c_star (class, a, c) VALUES ('c', 5, 'hi mom'::name);
INSERT INTO c_star (class, a) VALUES ('c', 6);
INSERT INTO c_star (class, c) VALUES ('c', 'hi paul'::name);
INSERT INTO c_star (class) VALUES ('c');
INSERT INTO d_star (class, a, b, c, d)
   VALUES ('d', 7, 'grumble'::text, 'hi sunita'::name, '0.0'::float8);
INSERT INTO d_star (class, a, b, c)
   VALUES ('d', 8, 'stumble'::text, 'hi koko'::name);
INSERT INTO d_star (class, a, b, d)
   VALUES ('d', 9, 'rumble'::text, '1.1'::float8);
INSERT INTO d_star (class, a, c, d)
   VALUES ('d', 10, 'hi kristin'::name, '10.01'::float8);
INSERT INTO d_star (class, b, c, d)
   VALUES ('d', 'crumble'::text, 'hi boris'::name, '100.001'::float8);
INSERT INTO d_star (class, a, b)
   VALUES ('d', 11, 'fumble'::text);
INSERT INTO d_star (class, a, c)
   VALUES ('d', 12, 'hi avi'::name);
INSERT INTO d_star (class, a, d)
   VALUES ('d', 13, '1000.0001'::float8);
INSERT INTO d_star (class, b, c)
   VALUES ('d', 'tumble'::text, 'hi andrew'::name);
INSERT INTO d_star (class, b, d)
   VALUES ('d', 'humble'::text, '10000.00001'::float8);
INSERT INTO d_star (class, c, d)
   VALUES ('d', 'hi ginger'::name, '100000.000001'::float8);
INSERT INTO d_star (class, a) VALUES ('d', 14);
INSERT INTO d_star (class, b) VALUES ('d', 'jumble'::text);
INSERT INTO d_star (class, c) VALUES ('d', 'hi jolly'::name);
INSERT INTO d_star (class, d) VALUES ('d', '1000000.0000001'::float8);
INSERT INTO d_star (class) VALUES ('d');
INSERT INTO e_star (class, a, c, e)
   VALUES ('e', 15, 'hi carol'::name, '-1'::int2);
INSERT INTO e_star (class, a, c)
   VALUES ('e', 16, 'hi bob'::name);
INSERT INTO e_star (class, a, e)
   VALUES ('e', 17, '-2'::int2);
INSERT INTO e_star (class, c, e)
   VALUES ('e', 'hi michelle'::name, '-3'::int2);
INSERT INTO e_star (class, a)
   VALUES ('e', 18);
INSERT INTO e_star (class, c)
   VALUES ('e', 'hi elisa'::name);
INSERT INTO e_star (class, e)
   VALUES ('e', '-4'::int2);
INSERT INTO f_star (class, a, c, e, f)
   VALUES ('f', 19, 'hi claire'::name, '-5'::int2, '(1,3),(2,4)'::polygon);
INSERT INTO f_star (class, a, c, e)
   VALUES ('f', 20, 'hi mike'::name, '-6'::int2);
INSERT INTO f_star (class, a, c, f)
   VALUES ('f', 21, 'hi marcel'::name, '(11,44),(22,55),(33,66)'::polygon);
INSERT INTO f_star (class, a, e, f)
   VALUES ('f', 22, '-7'::int2, '(111,555),(222,666),(333,777),(444,888)'::polygon);
INSERT INTO f_star (class, c, e, f)
   VALUES ('f', 'hi keith'::name, '-8'::int2,
	   '(1111,3333),(2222,4444)'::polygon);
INSERT INTO f_star (class, a, c)
   VALUES ('f', 24, 'hi marc'::name);
INSERT INTO f_star (class, a, e)
   VALUES ('f', 25, '-9'::int2);
INSERT INTO f_star (class, a, f)
   VALUES ('f', 26, '(11111,33333),(22222,44444)'::polygon);
INSERT INTO f_star (class, c, e)
   VALUES ('f', 'hi allison'::name, '-10'::int2);
INSERT INTO f_star (class, c, f)
   VALUES ('f', 'hi jeff'::name,
           '(111111,333333),(222222,444444)'::polygon);
INSERT INTO f_star (class, e, f)
   VALUES ('f', '-11'::int2, '(1111111,3333333),(2222222,4444444)'::polygon);
INSERT INTO f_star (class, a) VALUES ('f', 27);
INSERT INTO f_star (class, c) VALUES ('f', 'hi carl'::name);
INSERT INTO f_star (class, e) VALUES ('f', '-12'::int2);
INSERT INTO f_star (class, f)
   VALUES ('f', '(11111111,33333333),(22222222,44444444)'::polygon);
INSERT INTO f_star (class) VALUES ('f');
ALTER TABLE f_star RENAME COLUMN f TO ff;
ALTER TABLE e_star* RENAME COLUMN e TO ee;
ALTER TABLE d_star* RENAME COLUMN d TO dd;
ALTER TABLE c_star* RENAME COLUMN c TO cc;
ALTER TABLE b_star* RENAME COLUMN b TO bb;
ALTER TABLE a_star* RENAME COLUMN a TO aa;
ALTER TABLE a_star RENAME COLUMN aa TO foo;
ALTER TABLE a_star RENAME COLUMN foo TO aa;
