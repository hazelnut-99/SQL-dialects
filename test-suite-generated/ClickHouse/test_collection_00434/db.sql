DROP TABLE IF EXISTS t;
create table t( s String ) Engine=Memory as select arrayJoin (['a','b','c']);
