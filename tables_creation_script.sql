CREATE TABLE IF NOT EXISTS authors (
	ID_author SERIAL PRIMARY KEY,
	first_name VARCHAR(60),
	last_name VARCHAR(60)
);

CREATE TABLE IF NOT EXISTS readers (
	ID_reader_card SERIAL PRIMARY KEY,
	first_name VARCHAR(60),
	last_name VARCHAR(60),
	city VARCHAR(50),
	street VARCHAR(50),
	house VARCHAR(10),
	phone VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS publishers (
	ID_publisher SERIAL PRIMARY KEY,
	city VARCHAR(50),
	publisher_name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS books (
	ID_author SERIAL PRIMARY key,
	book_title VARCHAR(60),
	authors VARCHAR(60),
	year_published interval,
	volume SMALLINT,
	price SMALLINT,
	quantity SMALLINT,
	publisher SERIAL REFERENCES publishers (ID_publisher)
);

CREATE TABLE IF NOT EXISTS book_loans (
	order_id SERIAL PRIMARY key,
	book_id SERIAL references books (book_ID),
	reader SERIAL REFERENCES readers (ID_reader_card)
);

CREATE TABLE IF NOT EXISTS authorship (
	authorship_id SERIAL PRIMARY key,
	author_id SERIAL references authors (id_author),
	book_id SERIAL references books (book_ID)
);
