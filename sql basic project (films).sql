#PROJECT
use mavenmovies
#1

#select * from actor

select concat(first_name,last_name) as actors_name, 
length(concat(first_name,last_name))
from actor a limit 10;


#2
#use mavenmovies

select concat(first_name,last_name) as full_name,length(concat(first_name,last_name)) ,awards from actor_award
where awards like'%oscar%';

#3

select concat(first_name,' ',last_name),title from actor a 
inner join film_actor fc on a.actor_id = fc.actor_id
inner join film f on fc.film_id = f.film_id
where title = 'Frost Head';

#4
#select* from actor
#select * from film

select concat(first_name,' ',last_name) as actor_name,title from film f
inner join film_actor fc on f.film_id = fc.film_id
inner join actor a on fc.actor_id = a.actor_id
where concat(first_name,' ',last_name) =  'Will Wilson';

#5
#select * from film
#select * from inventory
#select * from rental

select title as film,rental_date,return_date from film f
inner join inventory inv on f.film_id = inv.film_id
inner join rental r on inv.inventory_id = r.inventory_id
where return_date like '____-05-__%';


#6
#select * from category
#select * from film

select * from film f
left join film_category fc on  f.film_id = fc.film_id
inner join category c on fc.category_id = c.category_id
where name = 'comedy';