CREATE TABLE department (
    dno varchar(5),
    dname varchar(15),
    mgrssn varchar(5),
    mgrstartdate date,
    PRIMARY KEY(dno),
);

CREATE TABLE employee (
    ssn varchar(5),
    name varchar(15),
    address varchar(15),
    sex varchar(6),
    salary int,
    superssn varchar(5),
    dno varchar(5),
    PRIMARY KEY(ssn),
);

ALTER TABLE employee
ADD CONSTRAINT fk1 FOREIGN KEY(dno) REFERENCES department(dno) ON DELETE CASCADE;

ALTER TABLE employee
ADD CONSTRAINT fk2 FOREIGN KEY(superssn) REFERENCES employee(ssn) ON DELETE CASCADE;

ALTER TABLE department
ADD CONSTRAINT fk3 FOREIGN KEY(mgrssn) REFERENCES employee(ssn) ON DELETE CASCADE;

CREATE TABLE dlocation (
    dno varchar(5),
    dloc varchar(15),
    PRIMARY KEY (dno, dloc),
    FOREIGN KEY(dno) REFERENCES department(dno) ON DELETE CASCADE
);

CREATE TABLE project (
    pno varchar(5),
    pname varchar(10),
    plocation varchar(10),
    dno varchar(5),
    PRIMARY KEY(pno),
    FOREIGN KEY(dno) REFERENCES department(dno) ON DELETE CASCADE
);

CREATE TABLE works_on (
    ssn varchar(5),
    pno varchar(5),
    hours int,
    PRIMARY KEY(ssn, pno),
    FOREIGN KEY(ssn) REFERENCES employee(ssn) ON DELETE CASCADE,
    FOREIGN KEY(pno) REFERENCES project(pno) ON DELETE CASCADE
);
