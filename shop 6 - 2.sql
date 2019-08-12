/*Создайте представление, которое выводит название name 
товарной позиции из таблицы products и соответствующее 
название каталога name из таблицы catalogs.*/

drop view if exists view_products;
create view view_products as select p.id, p.name 'name', c.name 'nname' from catalogs c
join products p on c.id = p.catalog_id;
select * from view_products