-- Insert directors
INSERT INTO director (dir_id, dir_name, dir_phone)
VALUES (101, 'James Cameron', '+1-123-456-7890'),
    (102, 'Christopher Nolan', '+1-234-567-8901'),
    (103, 'Ridley Scott', '+1-345-678-9012'),
    (104, 'Bong Joon Ho', '+1-457-702-7869'),
    (105, 'Todd Phillips', '+7-234-099-7809'),
    (106, 'Joseph Kosinski', '+8-643-234-2362');

INSERT INTO movie (mov_id, mov_title, mov_year, mov_lang, dir_id)
VALUES -- Insert James Cameron's movies
    (5001, 'Aliens', 1986, 'English', 101),
    (5002, 'Titanic', 1997, 'English', 101),
    (5003, 'Avatar', 2009, 'English', 101),
    (5004, 'Avatar 2', 2022, 'English', 101),
    -- Insert Ridley Scott's movies
    (4001, 'Alien', 1979, 'English', 103),
    -- Insert Christopher Nolan's movies
    (2005, 'Memento', 2000, 'English', 102),
    (2006, 'Interstellar', 2014, 'English', 102),
    (2007, 'Tenet', 2020, 'English', 102),
    -- Insert Other movies
    (1001, 'Parasite', 2019, 'Korean', 104),
    (3002, 'Joker', 2019, 'English', 105),
    (6001, 'Top Gun: Maverick', 2022, 'English', 106);

INSERT INTO actor (act_id, act_name, act_gender)
VALUES -- Insert actors for Alien 
    (101, 'Sigourney Weaver', 'Female'),
    (102, 'Tom Skerritt', 'Male'),
    (103, 'John Hurt', 'Male'),
    (113, 'Yaphet Kotto', 'Male'),
    (114, 'Veronica Cartwright', 'Female'),
    (115, 'Harry Dean Stanton', 'Male'),
    -- Insert actors for Titanic
    (104, 'Leonardo DiCaprio', 'Male'),
    (105, 'Kate Winslet', 'Female'),
    (106, 'Billy Zane', 'Male'),
    (116, 'Frances Fisher', 'Female'),
    (117, 'Gloria Stuart', 'Female'),
    (118, 'Bill Paxton', 'Male'),
    -- Insert actors for Tenet
    (107, 'John David Washington', 'Male'),
    (108, 'Robert Pattinson', 'Male'),
    (109, 'Elizabeth Debicki', 'Female'),
    (119, 'Dimple Kapadia', 'Female'),
    (120, 'Aaron Taylor-Johnson', 'Male'),
    (121, 'Kenneth Branagh', 'Male'),
    -- Insert actors for Avatar
    (110, 'Sam Worthington', 'Male'),
    (111, 'Zoe Saldana', 'Female'),
    (122, 'Stephen Lang', 'Male'),
    (123, 'Michelle Rodriguez', 'Female'),
    (124, 'Giovanni Ribisi', 'Male'),
    (125, 'Joel David Moore', 'Male'),
    (126, 'CCH Pounder', 'Female'),
    (127, 'Wes Studi', 'Male'),
    -- Insert actors for Avatar: The Way of Water
    (151, 'Cliff Curtis', 'Male'),
    (152, 'Britain Dalton', 'Male'),
    (153, 'Jack Champion', 'Male'),
    (154, 'Jamie Flatters', 'Male'),
    (155, 'Trinity Jo-Li Bliss', 'Female');

INSERT INTO movie_cast (act_id, mov_id, role)
VALUES -- Insert cast for Alien
    (101, 4001, 'Ellen Ripley'),
    (102, 4001, 'Dallas'),
    (103, 4001, 'Kane'),
    (113, 4001, 'Parker'),
    (114, 4001, 'Lambert'),
    (115, 4001, 'Brett'),
    -- Insert cast for Titanic
    (104, 5002, 'Jack Dawson'),
    (105, 5002, 'Rose DeWitt Bukater'),
    (106, 5002, 'Cal Hockley'),
    (116, 5002, 'Ruth Dewitt Bukater, Old'),
    (117, 5002, 'Rose Dawson Calvert'),
    (118, 5002, 'Brock Lovett'),
    -- Insert cast for Tenet
    (107, 2007, 'Protagonist'),
    (108, 2007, 'Neil'),
    (109, 2007, 'Kat'),
    (119, 2007, 'Priya'),
    (120, 2007, 'Ives'),
    (121, 2007, 'Andrei Sator'),
    -- Insert cast for Avatar
    (110, 5003, 'Jake Sully'),
    (111, 5003, 'Neytiri'),
    (101, 5003, 'Dr. Grace Augustine'),
    (122, 5003, 'Col. Miles Quaritch'),
    (123, 5003, 'Trudy Chacon'),
    (124, 5003, 'Parker Selfridge'),
    (125, 5003, 'Dr. Max Patel'),
    (126, 5003, 'Moat'),
    (127, 5003, 'Eytukan'),
    -- Insert cast for Avatar: The Way of Water
    (110, 5004, 'Jake Sully'),
    (111, 5004, 'Neytiri'),
    (101, 5004, 'Kiri'),
    (122, 5004, 'Col. Miles Quaritch'),
    (105, 5004, 'Ronal'),
    (151, 5004, 'Tonowari'),
    (152, 5004, 'Loak'),
    (153, 5004, 'Miles Spider Socorro'),
    (154, 5004, 'Neteyam'),
    (155, 5004, 'Tuk');

-- Insert ratings 
INSERT INTO rating(rat_id, mov_id, stars)
VALUES (53090, 5001, 8),
    (53091, 5001, 8),
    (53092, 5001, 7),
    (53093, 5001, 9),
    (53094, 5001, 10),
    (53095, 5002, 10),
    (53096, 5002, 9),
    (53097, 5002, 10),
    (53098, 5002, 10),
    (53099, 5002, 10),
    (53100, 5002, 10),
    (53101, 5002, 10),
    (53102, 5002, 10),
    (53103, 5003, 6),
    (53104, 5003, 7),
    (53105, 5003, 7),
    (53106, 5003, 8),
    (53107, 5004, 8),
    (53108, 5004, 9),
    (53109, 5004, 8),
    (53110, 5004, 8),
    (53111, 4001, 6),
    (53112, 4001, 8),
    (60340, 2007, 6),
    (60341, 2007, 7),
    (60342, 2007, 7),
    (65290, 1001, 8),
    (65291, 1001, 9),
    (65292, 1001, 9);