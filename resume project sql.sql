create database netflix;
use netflix;
select * from netflix_cleaned;
# 1.Total Titles
select count(title) as total_titles
from netflix_cleaned;
# 2.Movies vs TV Shows
select  type,count(title) as total_titles
FROM netflix_cleaned
group by type
order by  total_titles desc;
#Content by Year
select added_year,count(title) as total_titles
from netflix_cleaned
group by added_year
order by added_year;
#4.Top Countries
select country,count(title)as total_titles
from netflix_cleaned
where country <> 'Unknown'
group by country
order by total_titles desc
limit 10;
#5.Ratings
select  rating,count(title) as total_titles
from netflix_cleaned
group by rating
order by total_titles desc;
#6.Movies by Duration
select avg(duration_value) as average_movie_duration
from netflix_cleaned
where type = 'Movie';
#7.Movies Longer Than 120 Minutes
select title,duration_value
from netflix_cleaned
where type = 'Movie'
and duration_value > 120
order by duration_value desc;
#8.Content Added Per Month
select added_month_name,count(title) as total_titles
from netflix_cleaned
group by added_month_name
order by total_titles desc;
#9.Movies vs TV Shows by Year
select added_year,type,count(title) as total_titles
from netflix_cleaned
group by added_year, type
order by added_year, type;
#10.Top Directors
select director,count(title) as total_titles
from netflix_cleaned
where director <> 'Unknown'
group by director
order by total_titles desc
limit 10;