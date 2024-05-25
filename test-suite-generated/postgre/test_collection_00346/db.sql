CREATE TEMP TABLE abbrev_abort_uuids (
    id serial not null,
    abort_increasing uuid,
    abort_decreasing uuid,
    noabort_increasing uuid,
    noabort_decreasing uuid);
INSERT INTO abbrev_abort_uuids (abort_increasing, abort_decreasing, noabort_increasing, noabort_decreasing)
    SELECT
        ('00000000-0000-0000-0000-'||to_char(g.i, '000000000000FM'))::uuid abort_increasing,
        ('00000000-0000-0000-0000-'||to_char(20000 - g.i, '000000000000FM'))::uuid abort_decreasing,
        (to_char(g.i % 10009, '00000000FM')||'-0000-0000-0000-'||to_char(g.i, '000000000000FM'))::uuid noabort_increasing,
        (to_char(((20000 - g.i) % 10009), '00000000FM')||'-0000-0000-0000-'||to_char(20000 - g.i, '000000000000FM'))::uuid noabort_decreasing
    FROM generate_series(0, 20000, 1) g(i);
INSERT INTO abbrev_abort_uuids(id) VALUES(0);
INSERT INTO abbrev_abort_uuids DEFAULT VALUES;
INSERT INTO abbrev_abort_uuids DEFAULT VALUES;
INSERT INTO abbrev_abort_uuids (abort_increasing, abort_decreasing, noabort_increasing, noabort_decreasing)
    SELECT abort_increasing, abort_decreasing, noabort_increasing, noabort_decreasing
    FROM abbrev_abort_uuids
    WHERE (id < 10 OR id > 19990) AND id % 3 = 0 AND abort_increasing is not null;
CREATE INDEX abbrev_abort_uuids__noabort_increasing_idx ON abbrev_abort_uuids (noabort_increasing);
CREATE INDEX abbrev_abort_uuids__noabort_decreasing_idx ON abbrev_abort_uuids (noabort_decreasing);
