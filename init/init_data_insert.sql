COPY books FROM '/tmp/init_data/init_data_books.csv'
WITH (FORMAT csv, HEADER true);

COPY authors FROM '/tmp/init_data/init_data_authors.csv'
WITH (FORMAT csv, HEADER true);
