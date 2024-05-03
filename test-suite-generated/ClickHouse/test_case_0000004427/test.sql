with lowerUTF8(str) as l_, upperUTF8(str) as u_, '0x' || hex(str) as h_
select length(str), if(l_ == '\xe2', h_, l_), if(u_ == '\xe2', h_, u_) from utf8_overlap format CSV;
