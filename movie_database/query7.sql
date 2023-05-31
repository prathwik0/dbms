/*Find the total number of movies directed by each director.*/
SELECT d.dir_id,
    d.dir_name,
    COUNT(d.dir_id) num_of_movies
FROM director d,
    movie m
WHERE m.dir_id = d.dir_id
GROUP BY d.dir_id,
    d.dir_name;