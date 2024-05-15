select id, haystack, needle, ilike(haystack, needle)
  from non_const_needle
  order by id;
