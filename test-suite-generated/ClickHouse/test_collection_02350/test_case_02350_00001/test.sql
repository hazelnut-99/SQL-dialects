select id, haystack, needle, like(haystack, needle)
  from non_const_needle
  order by id;
