/*
Assume you're given two tables containing data about Facebook Pages and their respective likes (as in "Like a Facebook Page").

Write a query to return the IDs of the Facebook pages that have zero likes. The output should be sorted in ascending order based on the page IDs.
*/

CREATE TABLE IF NOT EXISTS pages (
    page_id INT,
    page_name VARCHAR(255)
);

INSERT INTO pages (page_id, page_name) VALUES
(1, 'Facebook'),
(2, 'Google'),
(3, 'Amazon');

CREATE TABLE IF NOT EXISTS page_likes (
    user_id INT,
    page_id INT,
    like_date DATE
);

INSERT INTO page_likes (user_id, page_id, like_date) VALUES
(1, 1, '2022-01-01'),
(2, 1, '2022-01-02'),
(3, 2, '2022-01-03'),
(4, 2, '2022-01-04'),
(5, 1, '2022-01-05'),
(6, 1, '2022-01-06'),
(7, 1, '2022-01-07'),
(8, 2, '2022-01-08'),
(9, 2, '2022-01-09'),
(10,2, '2022-01-10');


SELECT page_id
FROM pages
EXCEPT
SELECT page_id
FROM page_likes
ORDER BY page_id ASC;