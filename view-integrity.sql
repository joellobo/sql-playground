create table schema_a.table_1 (
    id int,
    name varchar(255)
);

create view schema_a.view_1 as
select id, name
from schema_a.table_1;

select * from schema_a.table_1;
select * from schema_a.view_1;

alter table schema_a.table_1
drop column name; 

drop table schema_a.table_1;
drop view view_1;