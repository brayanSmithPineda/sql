/*
Given a table of Facebook posts, for each user who posted at least twice in 2021, write a query to find the number of days between each user’s first post of the year and last post of the year in the year 2021. Output the user and number of the days between each user's first and last post.

p.s. If you've read the Ace the Data Science Interview and liked it, consider writing us a review?
*/

-- Dos columnas, fecha de inicio and end_date, and then calculate the difference in days
-- start_date and end_date with MIN and MAX functions

SELECT 
  user_id,
  EXTRACT( DAY FROM (MAX(post_date) - MIN(post_date))) AS days_between
FROM posts
WHERE EXTRACT(YEAR from post_date) = '2021'
GROUP BY user_id
HAVING EXTRACT( DAY FROM (MAX(post_date) - MIN(post_date))) > 0