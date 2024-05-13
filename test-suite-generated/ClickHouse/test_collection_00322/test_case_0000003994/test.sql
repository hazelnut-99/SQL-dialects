SELECT x, y FROM merge_one_two WHERE arrayExists(_ -> _ IN (1), x);
