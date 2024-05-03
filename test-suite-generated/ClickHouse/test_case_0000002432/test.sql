select arrayEnumerateUniq(arrayMap((a, b) -> (a, b), n.x, n.y), arrayMap((a, b) -> (b, a), n.x, n.y)) from tab_00650;
