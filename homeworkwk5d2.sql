--1 How many actors are there with the last name Wahlberg' ? 2
select first_name, last_name
from actor
where last_name = 'Wahlberg';

--2 How many payments were made between 3.99 and 5.99 ? 5607
select customer_id, amount
from payment
where amount between 3.99 and 5.99;

--3 What film does the store have the most of?(search in inventory) Multiple films are tied at 8
select film_id, count(*)
from inventory
group by film_id
order by film_id  desc;

--4 How many customers have the last name 'William'? 0
select first_name, last_name
from customer
where last_name = 'William;'

--5 What store employee (get the id) sold the most rentals? 1 - 8040
select staff_id, count(*) as most_rentals_ever
from rental
group by staff_id
order by most_rentals_ever desc;

--6 How many different district names are there? 378
select count(distinct district)
from address;

--7 What film has the most actors in it?(use film_actor table and get film_id) film_id 508 - 15 actors
select film_id, count(actor_id) as actor_number
from film_actor
group by film_id
order by actor_number desc
limit 1;

--8 From store_id 1, how many customers have a last name ending with 'es'? (use customer table) 13
select COUNT(store_id) 
from customer
where store_id = 1 and last_name like '%es';

--9 How many payment amounts (4.99, 5.99 etc) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250) 3
-- I THINK I DIDNT UNDERSTAND THE QUESTION RIGHT BECAUSE I COULDNT FIND THE CORRECT WAY



--10 within the film table, how many rating categories are there? and what rating has the most movies total? 5 ratings, PG-13 has the most
select count(distinct rating) 
from film;

select rating, count(*) as most_rated 
from film
group by rating
order by most_rated desc;



