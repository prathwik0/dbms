-- Schema for college database
/*
 * STUDENT(USN, SName, Address, Phone, Gender)
 * SEMSEC(SSID, Sem, Sec)
 * CLASS(USN, SSID)
 * SUBJECT(Subcode, Title, Sem, Credits)
 * IAMARKS(USN, Subcode, SSID, Test1, Test2, Test3, FinalIA)
 */
CREATE TABLE student (
    usn varchar(10),
    sname varchar(20),
    address varchar(20),
    phone int,
    gender varchar(6),
    PRIMARY KEY(usn)
);

CREATE TABLE semsec (
    ssid varchar(5),
    sem int,
    sec varchar(1),
    PRIMARY KEY(ssid)
);

CREATE TABLE class (
    usn varchar(10),
    ssid varchar(5),
    PRIMARY KEY(usn),
    FOREIGN KEY(usn) REFERENCES student(usn) ON DELETE CASCADE,
    FOREIGN KEY(ssid) REFERENCES semsec(ssid) ON DELETE CASCADE
);

CREATE TABLE subject (
    subcode varchar(7),
    title varchar(20),
    sem int,
    credits int,
    PRIMARY KEY(subcode)
);

CREATE TABLE iamarks (
    usn varchar(10),
    subcode varchar(7),
    ssid varchar(5),
    test1 int,
    test2 int,
    test3 int,
    final_ia int,
    PRIMARY KEY(usn, subcode, ssid),
    FOREIGN KEY(usn) REFERENCES student(usn) ON DELETE CASCADE,
    FOREIGN KEY(subcode) REFERENCES subject(subcode),
    FOREIGN KEY(ssid) REFERENCES semsec(ssid)
);
