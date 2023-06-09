/*Update the rating of all movies directed by ‘Ridley Scott’ to 5.*/
UPDATE rating
SET stars = 5
WHERE mov_id IN (
                SELECT m.mov_id
                FROM movie m,
                        director d
                WHERE m.dir_id = d.dir_id
                        AND d.dir_name = "Ridley Scott"
        );