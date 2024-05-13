select id, haystack, needle, not ilike(haystack, needle)
  from non_const_needle
  order by id;
