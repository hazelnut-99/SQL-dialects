select sipHash64(x) from tab sample 1/2 order by x, sipHash64(x) limit 5;
