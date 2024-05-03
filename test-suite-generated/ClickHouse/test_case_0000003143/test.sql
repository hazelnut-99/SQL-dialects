SELECT
    firstSignificantSubdomain('ftp://www.meta.com.ua/news.html'),
    firstSignificantSubdomain('https://www.bigmir.net/news.html'),
    firstSignificantSubdomain('magnet:ukr.abc'),
    firstSignificantSubdomain('ftp://www.yahoo.co.jp/news.html'),
    firstSignificantSubdomain('https://api.www3.static.dev.ввв.гугл.ком'),
    firstSignificantSubdomain('//www.meta.com.ua/news.html');
