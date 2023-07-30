--By Zackary Paulson
SELECT sqlcipher_export('your_encryption_key');
--Used Chat For The Path To The Database because I don't have access to it. 
ATTACH DATABASE 'path/to/your_encrypted_movie_database.db' AS encrypted KEY 'your_encryption_key';

CREATE TABLE IF NOT EXISTS encrypted.movies (
    ID INTEGER PRIMARY KEY,
    Title TEXT NOT NULL,
    ReleaseYear INTEGER,
    Genre TEXT,
    Director TEXT,
    Rating REAL,
    Runtime INTEGER
);

INSERT INTO encrypted.movies (Title, ReleaseYear, Genre, Director, Rating, Runtime) VALUES
    ('Movie A', 2020, 'Action', 'Director X', 7.5, 120),
    ('Movie B', 2015, 'Drama', 'Director Y', 8.2, 135),
    ('Movie Z', 2018, 'Comedy', 'Director Z', 6.9, 105);
