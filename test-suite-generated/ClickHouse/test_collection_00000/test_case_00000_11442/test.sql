SELECT range(100) == range(cast('100', 'Int8')) and range(100) == range(cast('100', 'Int16')) and range(100) == range(cast('100', 'Int32')) and range(100) == range(cast('100', 'Int64'));
