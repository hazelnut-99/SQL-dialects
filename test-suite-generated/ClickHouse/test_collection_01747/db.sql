drop table if exists polygon_01302;
create table polygon_01302 (x Array(Array(Array(Tuple(Float64, Float64)))), y Array(Array(Array(Tuple(Float64, Float64))))) engine=Memory();
insert into polygon_01302 values ([[[(23.725750, 37.971536)]]], [[[(4.3826169, 50.8119483)]]]);
