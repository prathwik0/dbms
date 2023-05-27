/* Create the tables of the library database */
USE library_database;

CREATE TABLE publisher (
	name varchar(20) NOT NULL,
	address varchar(50),
	phone bigint,
	PRIMARY KEY (name)
);

CREATE TABLE book (
	book_id varchar(20) NOT NULL,
	title varchar(50) NOT NULL,
	publisher_name varchar(20) NOT NULL,
	pub_year int,
	PRIMARY KEY (book_id),
	FOREIGN KEY (publisher_name) REFERENCES publisher(name) ON DELETE CASCADE
);

CREATE TABLE book_author (
	book_id varchar(20),
	author_name varchar(50) NOT NULL,
	PRIMARY KEY (book_id, author_name),
	FOREIGN KEY (book_id) REFERENCES book(book_id) ON DELETE CASCADE
);

CREATE TABLE library_branch (
	branch_id varchar(20) NOT NULL,
	branch_name varchar(20) NOT NULL,
	address varchar(50),
	PRIMARY KEY (branch_id)
);

CREATE TABLE book_copies (
	book_id varchar(20),
	branch_id varchar(20),
	no_of_copies int,
	PRIMARY KEY (book_id, branch_id),
	FOREIGN KEY (book_id) REFERENCES book(book_id) ON DELETE CASCADE,
	FOREIGN KEY (branch_id) REFERENCES library_branch(branch_id) ON DELETE CASCADE
);

CREATE TABLE book_lending (
	book_id varchar(20),
	branch_id varchar(20),
	card_no varchar(20) NOT NULL,
	date_out date,
	due_date date,
	PRIMARY KEY (book_id, branch_id, card_no),
	FOREIGN KEY (book_id) REFERENCES book(book_id) ON DELETE CASCADE,
	FOREIGN KEY (branch_id) REFERENCES library_branch(branch_id) ON DELETE CASCADE
);