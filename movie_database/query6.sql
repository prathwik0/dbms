/*Find the count of movies released in each year in each language.*/
SELECT mov_year,
    mov_lang,
    COUNT(mov_id) count_movies
FROM movie
GROUP BY mov_year,
    mov_lang
ORDER BY mov_year;