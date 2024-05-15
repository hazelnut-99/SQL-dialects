SELECT COUNT(*)
FROM (
    SELECT
        patch_id,
        channel,
        coalesce(sqrt(grad_x * grad_x + grad_y * grad_y), 0.) AS grad_mag,
        coalesce(atan2(grad_y, grad_x), 0.) AS grad_angle
    FROM (
        SELECT
            patch_id,
            channel,
            (case channel when 'R' then r_x when 'G' then g_x else b_x end) as grad_x,
            (case channel when 'R' then r_y when 'G' then g_y else b_y end) as grad_y
        FROM (
            SELECT
                patch_id,
                (r_x_1::integer - r_x_0::integer) / 2.0 as  r_x,
                (r_y_1::integer - r_y_0::integer) / 2.0 as  r_y,
                (g_x_1::integer - g_x_0::integer) / 2.0 as  g_x,
                (g_y_1::integer - g_y_0::integer) / 2.0 as  g_y,
                (b_x_1::integer - b_x_0::integer) / 2.0 as  b_x,
                (b_y_1::integer - b_y_0::integer) / 2.0 as  b_y
            FROM (
                SELECT
                    px.*,
                    lead(red,   1) OVER (w) AS r_x_1,
                    lag(red,    1) OVER (w) AS r_x_0,
                    lead(green, 1) OVER (w) AS g_x_1,
                    lag(green,  1) OVER (w) AS g_x_0,
                    lead(blue,  1) OVER (w) AS b_x_1,
                    lag(blue,   1) OVER (w) AS b_x_0,
                    lead(red,   3) OVER (w) AS r_y_1,
                    lag(red,    3) OVER (w) AS r_y_0,
                    lead(green, 3) OVER (w) AS g_y_1,
                    lag(green,  3) OVER (w) AS g_y_0,
                    lead(blue,  3) OVER (w) AS b_y_1,
                    lag(blue,   3) OVER (w) AS b_y_0
                FROM (
                    SELECT
                        p.id AS patch_id,
                        px.*
                    FROM (SELECT x + dx as x_pos, y + dy as y_pos, px.* FROM pixel px, delta2 d) px, patch p
                    WHERE px.x_pos = p.x_pos AND px.y_pos = p.y_pos
                      AND px.image_id = p.image_id
                      AND p.params_id = 1
                ) px
                WINDOW w AS (PARTITION BY patch_id ORDER BY y, x)
            ) g
            WHERE x_pos = x AND y_pos = y
        ) g, channel c
    ) g
) f;
