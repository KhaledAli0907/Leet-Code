-- 1757. Recyclable and Low Fat Products --
SELECT product_id FROM Products WHERE low_fats = "Y" AND recyclable = "Y";

-- 584. Find Customer Referee
-- answer 1
SELECT name FROM Customer WHERE referee_id != 2 OR referee_id is null;
-- answer 2
SELECT name FROM Customer WHERE IFNULL(referee_id, 1) <> 2;

-- 595. Big Countries
-- beats 90%
SELECT name, population, area FROM World
WHERE area >= (3 * POW(10, 6))
OR population >= (25 * POW(10, 6));

-- 1148. Article Views I
SELECT DISTINCT author_id AS id FROM Views
WHERE author_id = viewer_id
ORDER BY id ASC; 

-- 1683. Invalid Tweets
SELECT tweet_id FROM tweets WHERE length(content) > 15;