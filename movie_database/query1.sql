/*List the titles of all movies directed by James Cameron*/
SELECT mov_title
FROM movie m,
    director d
WHERE m.dir_id = d.dir_id
    AND d.dir_name = 'James Cameron';