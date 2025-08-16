/*
Assume you're given a table Twitter tweet data, write a query to obtain a histogram of tweets posted per user in 2022. Output the tweet count per user as the bucket and the number of Twitter users who fall into that bucket.

In other words, group the users by the number of tweets they posted in 2022 and count the number of users in each group.
tweets Table:
Column Name	Type
tweet_id	integer
user_id	integer
msg	string
tweet_date	timestamp
*/

--Devide the solution in two parts:
--1. Get the number of tweets per user
--2. Group the users by the number of tweets they posted in 2022 and count the number of users in each group.


SELECT count_number AS tweet_bucket, COUNT(count_number) as users_num
FROM (
    --1. Get the number of tweets per user
  SELECT user_id, COUNT(*) AS count_number
  FROM Tweets
  WHERE EXTRACT(YEAR FROM tweet_date) = 2022
  GROUP BY user_id
)t
GROUP BY count_number

