--#1.
select first_name, last_name count
from actor
where last_name = 'Wahlberg';
--ANSWER: 2

--#2.
select count(*)
from payment
where amount >= 3.99 and amount <= 5.99;
--ANSWER: 5,607

--#3
select film_id, count (film_id)
from inventory
where film_id = film_id
group by film_id
order by count desc;
--ANSWER: Multiple films are tied at 8

--#4
select last_name
from customer
where last_name = 'William';
--ANSWER: 0

--#5
select staff_id, count(rental_id) AS most_rentals_sold
from rental
group by staff_id
order by most_rentals_sold desc;
--ANSWER: 1 - 8040

--#6
select count(distinct district) as district_names_amount
from address;
--ANSWER: 378

--#7
select film_id, count(actor_id) as number_of_actors
from film_actor
group by film_id
order by number_of_actors desc
limit 1;
--ANSWER: film_id 508, number_of_actors 15

--#8
select count(customer_id) as last_name_es
from customer
where last_name like '%es'
and store_id = 1;
--ANSWER: 13

--#9
select amount, count(*) as rental_count
from payment
where customer_id between 380 and 430
group by amount
having count(*) > 250;
--ANSWER: 3

--#10
select rating, count(*) as movie_count
from film
group by rating
order by movie_count desc;
--ANSWER: 5 Ratings, PG-13 has the most (223)




