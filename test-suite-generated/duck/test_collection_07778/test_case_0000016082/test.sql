SELECT sum(i) over cumulativeSum 
FROM integers 
WINDOW cumulativeSum AS ();
