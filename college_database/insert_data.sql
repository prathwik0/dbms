INSERT INTO student (usn, sname, address, phone, gender)
VALUES (
        '4vp14cs001',
        'namitha',
        'udupi',
        7860054110,
        'female'
    ),
    (
        '4vp14cs021',
        'mithun',
        'virajpe',
        8762514991,
        'male'
    ),
    (
        '4vp14cs053',
        'kshama',
        'puttur',
        9000876123,
        'female'
    ),
    (
        '4vp14is010',
        'raghav',
        'karwar',
        8700967408,
        'male'
    ),
    (
        '4vp14is025',
        'sooraj',
        'bangalore',
        7773334422,
        'male'
    ),
    (
        '4vp13cs011',
        'karthik',
        'puttur',
        7789086125,
        'male'
    );

INSERT INTO semsec (ssid, sem, sec)
VALUES ('a235', 4, 'a'),
    ('a234', 4, 'b'),
    ('a218', 6, 'a');

INSERT INTO class (usn, ssid)
VALUES ('4vp14cs001', 'a235'),
    ('4vp14cs021', 'a235'),
    ('4vp14cs053', 'a234'),
    ('4vp14is010', 'a234'),
    ('4vp14is025', 'a234'),
    ('4vp13cs011', 'a218');

INSERT INTO subject (subcode, title, sem, credits)
VALUES ('15cs41', 'algorithms', 4, 4),
    ('15cs462', 'graph theory', 4, 3),
    ('15cs44', 'processors', 4, 4),
    ('15cs45', 'oop WITH c++', 4, 4),
    ('15cs64', 'networks', 6, 4);

INSERT INTO iamarks (
        usn,
        subcode,
        ssid,
        test1,
        test2,
        test3
    )
VALUES ('4vp14cs001', '15cs41', 'a235', 19, 18, 20),
    ('4vp14cs001', '15cs44', 'a235', 15, 18, 19),
    ('4vp14cs021', '15cs41', 'a235', 15, 17, 14),
    ('4vp14cs021', '15cs44', 'a235', 17, 16, 12),
    ('4vp14cs053', '15cs462', 'a234', 13, 17, 15),
    ('4vp14cs053', '15cs45', 'a234', 13, 17, 19),
    ('4vp14is010', '15cs462', 'a234', 12, 19, 13),
    ('4vp14is010', '15cs45', 'a234', 19, 17, 16),
    ('4vp14is025', '15cs462', 'a234', 19, 17, 18),
    ('4vp14is025', '15cs45', 'a234', 17, 15, 16),
    ('4vp13cs011', '15cs64', 'a218', 17, 18, 19),
    ('4vp13cs011', '15cs45', 'a218', 10, 11, 9);
