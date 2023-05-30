/* Create the tables of the library database */
USE movie_database;

CREATE TABLE actor (
    act_id INT PRIMARY KEY,
    act_name VARCHAR(50),
    act_gender VARCHAR(10)
);

CREATE TABLE director (
    dir_id INT PRIMARY KEY,
    dir_name VARCHAR(50),
    dir_phone VARCHAR(20)
);

CREATE TABLE movie (
    mov_id INT PRIMARY KEY,
    mov_title VARCHAR(100),
    mov_year INT,
    mov_lang VARCHAR(20),
    dir_id INT,
    FOREIGN KEY (dir_id) REFERENCES director(dir_id) ON DELETE CASCADE
);

CREATE TABLE movie_cast (
    act_id INT,
    mov_id INT,
    role VARCHAR(50),
    PRIMARY KEY (act_id, mov_id),
    FOREIGN KEY (act_id) REFERENCES actor(act_id) ON DELETE CASCADE,
    FOREIGN KEY (mov_id) REFERENCES movie(mov_id) ON DELETE CASCADE
);

CREATE TABLE rating (
    rat_id INT PRIMARY KEY,
    mov_id INT,
    rev_stars INT,
    FOREIGN KEY (mov_id) REFERENCES movie(mov_id) ON DELETE CASCADE
);