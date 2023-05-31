/*Find the title of movies and number of stars for each movie 
 that has at least one rating and find the highest number of stars
 that movie received. Sort the result by movie title.*/
SELECT mov_title,
    sum(stars) total_stars,
    max(stars) max_stars
FROM rating r,
    movie m
WHERE m.mov_id = r.mov_id
GROUP BY m.mov_title,
    m.mov_id
ORDER BY m.mov_title;