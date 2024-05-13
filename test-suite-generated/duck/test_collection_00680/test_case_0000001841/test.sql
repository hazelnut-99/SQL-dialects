SELECT p.id, p.type, p.m, p.vals FROM monthly_sales
    UNPIVOT(sales FOR month IN (jan, feb, mar, april)) AS p(id, type, m, vals);
