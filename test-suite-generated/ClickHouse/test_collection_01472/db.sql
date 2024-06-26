DROP TABLE IF EXISTS cat_hist;
DROP TABLE IF EXISTS prod_hist;
DROP TABLE IF EXISTS products_l;
DROP TABLE IF EXISTS products;
CREATE TABLE cat_hist (categoryId UUID, categoryName String) ENGINE Memory;
CREATE TABLE prod_hist (categoryId UUID, productId UUID) ENGINE = MergeTree ORDER BY productId;
CREATE TABLE products as prod_hist ENGINE = Merge(currentDatabase(), '^products_');
