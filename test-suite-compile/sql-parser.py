from sqlglot import parse_one, exp
import sqlparse
from sqlparse.tokens import DML, Keyword

def contains_write_operations(sql):
    """
    check if a sql statement involves write operations.
    """
    parsed = sqlparse.parse(sql)[0]
    for token in parsed.tokens:
        if token.ttype is DML:
            if token.value.upper() in ['INSERT', 'UPDATE', 'DELETE']:
                return True
        if token.ttype is Keyword and token.value.upper() in ['CREATE', 'ALTER', 'DROP']:
            return True
    return False


def get_tables_involved(sql_query):
    """
    parse the related tables in a sql query
    """
    tables = [table.name for table in parse_one(sql_query).find_all(exp.Table)]
    return tables


if __name__ == "__main__":
    r1 = contains_write_operations("SELECT DISTINCT x FROM (SELECT number % 10 AS x FROM system.numbers LIMIT 100000) ORDER BY x;")
    r2 = get_tables_involved("SELECT DISTINCT x FROM (SELECT number % 10 AS x FROM system.numbers LIMIT 100000) ORDER BY x;")
    r3 = get_tables_involved("select a from t1");
    print(r1)
    print(r2)
    print(r3)


