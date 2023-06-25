
CREATE TABLE IF NOT EXISTS books (
    book_id integer,
    book_name varchar(100),
    author_id integer
);

CREATE TABLE IF NOT EXISTS authors (
    author_id integer,
    author_name varchar(100)
);
