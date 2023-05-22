INSERT INTO publisher (name, address, phone)
VALUES ('McGraw', 'Noida', 9089013432),
    ('Phi', 'Pune', 9945467800),
    ('Pearson', 'Nagpur', 7875622333);

INSERT INTO library_branch (branch_id, branch_name, address)
VALUES (11, 'VC Campus', 'Puttur'),
    (12, 'PVS', 'Mangalore'),
    (13, 'MG Road', 'Bangalore');

INSERT INTO book (book_id, title, publisher_name, pub_year)
VALUES (111, 'Management', 'McGraw', 2010),
    (112, 'Computer Networks', 'Pearson', 2006),
    (113, 'Database Concepts', 'Pearson', 2014),
    (115, 'Enterpreneurship', 'Pearson', 2010),
    (114, 'Formal languages', 'McGraw', 2006),
    (116, 'Embedded Systems', 'McGraw', 2014),
    (117, 'Programming in JAVA', 'Phi', 2010);

INSERT INTO book_author (book_id, author_name)
VALUES (111, 'Tripathy, Reddy'),
    (112, 'Larry Peterson'),
    (113, 'Ramez, Navathe'),
    (114, 'John e Hopcroft'),
    (115, 'Vasant Desai'),
    (116, 'Rajkamal'),
    (117, 'Herbert Schildt');

INSERT INTO book_copies (book_id, branch_id, no_of_copies)
VALUES (111, 11, 5),
    (111, 13, 10),
    (112, 12, 5),
    (113, 11, 12),
    (113, 12, 20),
    (114, 13, 15),
    (115, 11, 9),
    (115, 13, 25),
    (116, 13, 5),
    (117, 12, 5);

INSERT INTO book_lending (book_id, branch_id, card_no, date_out, due_date)
VALUES (111, 11, 1111, '2017-07-10', '2017-07-20'),
    (111, 13, 1112, '2017-07-13', '2017-07-23'),
    (114, 13, 1113, '2017-07-05', '2017-07-15'),
    (115, 13, 1113, '2017-06-10', '2017-06-20'),
    (116, 13, 1113, '2017-07-15', '2017-07-25'),
    (111, 13, 1113, '2017-03-23', '2017-04-02'),
    (111, 13, 1114, '2017-03-20', '2017-03-30'),
    (113, 11, 1111, '2017-04-02', '2017-04-12'),
    (113, 12, 1111, '2017-05-05', '2017-05-15'),
    (115, 11, 1111, '2017-02-02', '2017-02-12');