SELECT DISTINCT col1, multiIf(col1 != 213, 'Москва', 'Мир') AS k FROM multi_if_check LIMIT 10;
