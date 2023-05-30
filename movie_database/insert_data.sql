-- Insert directors
INSERT INTO director (dir_id, dir_name, dir_phone)
VALUES (101, 'James Cameron', '+1-123-456-7890'),
    (102, 'Christopher Nolan', '+1-234-567-8901'),
    (103, 'Ridley Scott', '+1-345-678-9012');

-- Insert James Cameron's movies
INSERT INTO movie (mov_id, mov_title, mov_year, mov_lang, dir_id)
VALUES (5001, 'Aliens', 1986, 'English', 101),
    (5002, 'Titanic', 1997, 'English', 101),
    (6001, 'Avatar', 2009, 'English', 101),
    (6002, 'The Way of Water', 2022, 'English', 101);

-- Insert Ridley Scott's movies
INSERT INTO movie (mov_id, mov_title, mov_year, mov_lang, dir_id)
VALUES (4001, 'Alien', 1979, 'English', 103);

-- Insert Christopher Nolan's movies
INSERT INTO movie (mov_id, mov_title, mov_year, mov_lang, dir_id)
VALUES (545, 'Memento', 2000, 'English', 102),
    (546, 'Interstellar', 2014, 'English', 102),
    (547, 'Tenet', 2020, 'English', 102);

-- Insert actors for Alien
INSERT INTO actor (act_id, act_name, act_gender)
VALUES (1, 'Sigourney Weaver', 'Female'),
    (2, 'Tom Skerritt', 'Male'),
    (3, 'John Hurt', 'Male'),
    (13, 'Yaphet Kotto', 'Male'),
    (14, 'Veronica Cartwright', 'Female'),
    (15, 'Harry Dean Stanton', 'Male');

-- Insert cast for Alien
INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (1, 4001, 'Ellen Ripley'),
    (2, 4001, 'Dallas'),
    (3, 4001, 'Kane'),
    (13, 4001, 'Parker'),
    (14, 4001, 'Lambert'),
    (15, 4001, 'Brett');

-- Insert actors for Titanic
INSERT INTO actor (act_id, act_name, act_gender)
VALUES (4, 'Leonardo DiCaprio', 'Male'),
    (5, 'Kate Winslet', 'Female'),
    (6, 'Billy Zane', 'Male'),
    (16, 'Frances Fisher', 'Female'),
    (17, 'Gloria Stuart', 'Female'),
    (18, 'Bill Paxton', 'Male');

-- Insert cast for Titanic
INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (4, 5002, 'Jack Dawson'),
    (5, 5002, 'Rose DeWitt Bukater'),
    (6, 5002, 'Cal Hockley'),
    (16, 5002, 'Ruth Dewitt Bukater, Old'),
    (17, 5002, 'Rose Dawson Calvert'),
    (18, 5002, 'Brock Lovett');

-- Insert actors for Tenet
INSERT INTO actor (act_id, act_name, act_gender)
VALUES (7, 'John David Washington', 'Male'),
    (8, 'Robert Pattinson', 'Male'),
    (9, 'Elizabeth Debicki', 'Female'),
    (19, 'Dimple Kapadia', 'Female'),
    (20, 'Aaron Taylor-Johnson', 'Male'),
    (21, 'Himesh Patel', 'Male');

-- Insert cast for Tenet
INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (7, 547, 'Protagonist'),
    (8, 547, 'Neil'),
    (9, 547, 'Kat'),
    (19, 547, 'Priya'),
    (20, 547, 'Ives'),
    (21, 547, 'Mahir');

-- Insert actors for Avatar
INSERT INTO actor (act_id, act_name, act_gender)
VALUES (10, 'Sam Worthington', 'Male'),
    (11, 'Zoe Saldana', 'Female'),
    (12, 'Sigourney Weaver', 'Female'),
    (22, 'Stephen Lang', 'Male'),
    (23, 'Michelle Rodriguez', 'Female'),
    (24, 'Giovanni Ribisi', 'Male'),
    (25, 'Joel David Moore', 'Male'),
    (26, 'CCH Pounder', 'Female'),
    (27, 'Wes Studi', 'Male');

-- Insert cast for Avatar
INSERT INTO movie_cast (act_id, mov_id, role)
VALUES (8, 6001, 'Jake Sully'),
    (9, 6001, 'Neytiri'),
    (10, 6001, 'Dr. Grace Augustine'),
    (11, 6001, 'Col. Miles Quaritch'),
    (24, 6001, 'Trudy Chacon'),
    (25, 6001, 'Dr. Max Patel'),
    (26, 6001, 'Moat'),
    (27, 6001, 'Eytukan');

-- Insert ratings 
INSERT INTO rating(rat_id, mov_id, stars)
VALUES (1, 547, 8),
    (2, 547, 7),
    (3, 547, 10);