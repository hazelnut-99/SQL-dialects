SELECT click_country_id FROM t AS cc LEFT JOIN d ON toUInt32(d.id) = cc.click_city_id;
