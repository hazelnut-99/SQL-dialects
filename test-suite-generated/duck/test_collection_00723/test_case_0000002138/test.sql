SELECT COALESCE(s5, s4, s3, s2, s1) FROM multistrings WHERE COALESCE(s5, s4, s3, s2, s1) IS NOT NULL;
