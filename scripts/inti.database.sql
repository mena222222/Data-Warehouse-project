use master 
go 
if db_id('data_warehouse_project') is not null
begin
alter database data_warehouse_project set single_user with rollback immediate
drop database data_warehouse_project
end
go
create database data_warehouse_project
go 
create schema bronze
go 
create schema silver
go 
create schema gold
