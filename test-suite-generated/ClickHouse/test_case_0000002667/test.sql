SELECT '5935,5998,6014' == replaceRegexpAll('5935,5998,6014, ', concat('^[', regexpQuoteMeta(', '), ']*|[', regexpQuoteMeta(', '), ']*$'), '') AS x;
