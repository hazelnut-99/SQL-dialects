from sqlglot import parse_one, exp
import sqlparse
from sqlparse.tokens import DML, Keyword, DDL


def parse_token_from_sql(sql):
    """
    get tokens from sql
    """
    parsed = sqlparse.parse(sql)[0]
    return [token for token in parsed.tokens]


def contains_write_operations(sql):
    """
    check if a sql statement involves write operations.
    """
    parsed = sqlparse.parse(sql)[0]
    


def get_tables_involved(sql_query, dialect):
    """
    parse the related tables in a sql query
    """
    tables = [table.name for table in parse_one(sql_query, dialect).find_all(exp.Table)]
    return tables


import sqlparse

def extract_tables_from_sql(sql_query):
    # Parse the SQL query
    parsed = sqlparse.parse(sql_query)

    # List to store table names
    table_names = []

    # Iterate through parsed SQL tokens
    for statement in parsed:
        # Check the type of SQL statement (e.g., SELECT, INSERT, CREATE TABLE, etc.)
        if statement.get_type() == 'SELECT':  # SELECT statement
            # Find table names after the FROM keyword
            for token in statement.tokens:
                if token.ttype and token.ttype in sqlparse.tokens.Keyword:
                    keyword = token.normalized.upper()
                    if keyword == 'FROM':
                        # Find table names following the FROM keyword
                        next_token = token.next_token
                        while next_token:
                            if next_token.ttype and next_token.ttype in sqlparse.tokens.Keyword:
                                break
                            if next_token.ttype and next_token.ttype in sqlparse.tokens.Name:
                                table_name = next_token.value
                                table_names.append(table_name)
                                break
                            next_token = next_token.next_token

        elif statement.get_type() == 'INSERT':  # INSERT INTO statement
            # Find the table name after the INTO keyword
            into_found = False
            for token in statement.tokens:
                if into_found and token.ttype and token.ttype in sqlparse.tokens.Name:
                    table_name = token.value
                    table_names.append(table_name)
                    break
                if token.normalized.upper() == 'INTO':
                    into_found = True

        elif statement.get_type() == 'CREATE':  # CREATE TABLE statement
            # Find the table name after the CREATE TABLE statement
            create_found = False
            for token in statement.tokens:
                if create_found and token.ttype and token.ttype in sqlparse.tokens.Name:
                    table_name = token.value
                    table_names.append(table_name)
                    break
                if token.normalized.upper() == 'TABLE':
                    create_found = True

    return table_names


if __name__ == "__main__":
    r1 = contains_write_operations("SELECT DISTINCT x FROM (SELECT number % 10 AS x FROM system.numbers LIMIT 100000) ORDER BY x;")
    r2 = get_tables_involved("SELECT DISTINCT x FROM (SELECT number % 10 AS x FROM system.numbers LIMIT 100000) ORDER BY x;")
    r3 = get_tables_involved("select a from t1");
    print(r1)
    print(r2)
    print(r3)


