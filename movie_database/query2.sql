/*Find the movie names where one or more actors acted in two or more movies*/
SELECT DISTINCT mov_title
FROM movie m,
    movie_cast mc
WHERE m.mov_id = mc.mov_id
    AND (
        SELECT COUNT(mov_id)
        FROM movie_cast
        WHERE act_id = mc.act_id
    ) >= 2;

-- OR
SELECT DISTINCT mov_title
FROM movie m,
    movie_cast mc
WHERE m.mov_id = mc.mov_id
    AND mc.act_id IN (
        SELECT act_id
        FROM movie_cast
        GROUP BY act_id
        HAVING COUNT(mov_id) >= 2
    );