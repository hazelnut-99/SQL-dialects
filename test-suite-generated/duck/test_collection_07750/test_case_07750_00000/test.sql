SELECT item, rank() OVER (ORDER BY return_ratio) AS return_rank, rank() OVER (ORDER BY currency_ratio) AS currency_rank FROM wintest order by item;
