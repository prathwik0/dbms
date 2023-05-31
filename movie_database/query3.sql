/* List all actors who acted in a movie before 
 2000 and also in a movie after 2015 (use JOIN operation)*/
SELECT act_name
FROM actor a
    JOIN movie_cast mc ON a.act_id = mc.act_id
    JOIN movie m ON mc.mov_id = m.mov_id
WHERE m.mov_year < 2000
INTERSECT
SELECT act_name
FROM actor a
    JOIN movie_cast mc ON a.act_id = mc.act_id
    JOIN movie m ON mc.mov_id = m.mov_id
WHERE m.mov_year > 2010;

-- Without JOIN clause
SELECT a.act_id,
    a.act_name
FROM actor a,
    movie_cast mc,
    movie m
WHERE a.act_id = mc.act_id
    AND m.mov_id = mc.mov_id
    AND m.mov_year > 2020
INTERSECT
SELECT a.act_id,
    a.act_name
FROM actor a,
    movie_cast mc,
    movie m
WHERE a.act_id = mc.act_id
    AND m.mov_id = mc.mov_id
    AND m.mov_year < 2000;