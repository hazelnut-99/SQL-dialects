SELECT
    base.id AS `base.id`,
    derived1.value1 AS `derived1.value1`
FROM test_01600.base AS base
LEFT JOIN test_01600.derived1 AS derived1 ON base.id = derived1.id1;
