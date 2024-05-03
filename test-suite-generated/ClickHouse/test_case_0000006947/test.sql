SELECT
    if(empty(id), toString(device), id) AS device,
    multiIf(
            notEmpty(id),'a',
            device == '00000000-0000-0000-0000-000000000000', 'b',
            'c' ) AS device_id_type,
    count()
FROM table1
GROUP BY device, device_id_type
ORDER BY device;
