select id, haystack, needle, not like(haystack, needle)
  from non_const_needle
  order by id;
