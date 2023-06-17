INSERT INTO salesman (salesman_id, name, city, commission)
VALUES (1000, "Benjen Stark", "Winterfell", 10),
    (1001, "Petyr Baelish", "King's Landing", 15),
    (1002, "Tywin Lannister", "Casterly Rock", 20),
    (1003, "Jaqen H'ghar", "Harrenhal", 10);

INSERT INTO customer (customer_id, cust_name, city, grade)
VALUES (500, "Eddard Stark", "Wintefell", 10),
    (501, "Catelyn Stark", "Winterfell", 6),
    (502, "Robb Stark", "Winterfell", 8),
    (503, "Jorah Mormont", "Bear Islands", 10),
    (600, "Robert Baratheon", "King's Landing", 5),
    (601, "Cersei Lannister", "King's Landing", 4),
    (602, "Jaime Lannister", "King's Landing", 7),
    (603, "Varys", "King's Landing", 6),
    (604, "Bronn", "King's Landing", 8),
    (605, "Barriston Selmy", "King's Landing", 10),
    (700, "Kevin Lannister", "Casterly Rock", 7),
    (701, "Tyrion Lannister", "Casterly Rock", 6),
    (800, "Stannis Barratheon", "Dragonstone", 9),
    (801, "Davos Seaworth", "Dragonstone", 10),
    (900, "Renly Baratheon", "Storm's End", 7);

INSERT INTO orders (
        ord_no,
        purchase_amt,
        ord_date,
        customer_id,
        salesman_id
    )
VALUES (100, 2500, "2020-07-01", 500, 1000),
    (101, 1000, "2020-07-01", 701, 1000),
    (102, 1500, "2020-07-02", 502, 1000),
    (103, 1600, "2020-07-03", 600, 1001),
    (104, 10000, "2020-07-04", 602, 1001),
    (105, 500, "2020-07-07", 605, 1001),
    (106, 800, "2020-07-09", 701, 1001),
    (107, 2000, "2020-07-10", 900, 1001),
    (108, 750, "2020-08-02", 603, 1003),
    (109, 30000, "2020-08-02", 600, 1002),
    (110, 8000, "2020-08-06", 600, 1001),
    (111, 1200, "2020-08-06", 602, 1001),
    (112, 600, "2020-08-10", 801, 1003),
    (113, 10000, "2020-08-12", 600, 1002);