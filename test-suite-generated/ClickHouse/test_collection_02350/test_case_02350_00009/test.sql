select id, haystack, needle, match(haystack, needle)
  from non_const_needle
  order by id;
