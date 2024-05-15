SELECT COUNT(*) FROM integers_empty JOIN integers2 ON (integers_empty.i<>integers2.i OR integers_empty.i+1<>integers2.i);
