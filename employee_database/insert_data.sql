INSERT INTO department (dno, dname, mgrssn, mgrstartdate)
VALUES (1, 'IT', 101, '10-06-2023'),
    (2, 'WebDev', 110, '19-11-2022');

INSERT INTO employee (ssn, name, address, sex, salary, superssn, dno)
VALUES (
        101,
        'Pollie Aspergus',
        'Austin, Texas',
        'female',
        800000,
        110,
        1
    ),
    (
        102,
        'Roscoe Sequoia',
        'Pheonix, Arizona',
        'female',
        500000,
        101,
        1
    ),
    (
        103,
        'Fraser Van',
        'Dallas, Texas',
        'male',
        700000,
        102,
        2
    ),
    (
        104,
        'Nyla Evan',
        'Houston, Texas',
        'female',
        650000,
        102,
        1
    ),
    (
        110,
        'Stuart Ash',
        'New York, New York',
        'male',
        900000,
,
        1
    ),
    (
        111,
        'Kean Fletcher',
        'Columbus, Ohio',
        'male',
        650000,
        110,
        1
    ),
    (
        112,
        'Johnathan Shaw',
        'Dallas, Texas',
        'male',
        780000,
        110,
        2
    );

INSERT INTO dlocation (dno, dloc)
VALUES (1, 'Austin, Texas'),
    (2, 'Austin, Texas'),
    (1, 'Pheonix, Arizona'),
    (2, 'New York, New York');

INSERT INTO project (pno, pname, plocation, dno)
VALUES (10, 'VPN Tunnel', 'Texas', 1),
    (11, 'Load Balancer', 'Texas', 1),
    (12, 'JS Framework', 'Texas', 2),
    (13, 'WebMining', 'New York', 2),
    (14, 'Browser Optimization', 'New York', 2);

INSERT INTO works_on (ssn, pno, hours)
VALUES (101, 10, 3),
    (101, 11, 5),
    (102, 10, 8),
    (103, 10, 5),
    (103, 11, 3),
    (104, 10, 8),
    (110, 10, 2),
    (110, 12, 2),
    (110, 13, 2),
    (110, 14, 2),
    (111, 12, 8),
    (112, 13, 8);
