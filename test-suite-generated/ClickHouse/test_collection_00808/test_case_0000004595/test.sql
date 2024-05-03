SELECT dictGetOrDefault('regexp_dict', 'name', concat(toString(number), '/tclwebkit', toString(number)), 
intDiv(1,number)) FROM numbers(2);
