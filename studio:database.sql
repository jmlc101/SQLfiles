CREATE TABLE movies (
    movie_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(120),
    year INTEGER,
    director VARCHAR(120)
);

CREATE TABLE directors (
    director_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    first VARCHAR(120),
    last VARCHAR(120),
    country VARCHAR(120)
);

DROP TABLE movies;

CREATE TABLE movies (
    movie_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(120),
    year INTEGER,
    director_id INTEGER,
    FOREIGN KEY (director_id) REFERENCES directors(director_id)
);

/* Task 1 */
SELECT * FROM movies;

/* Task 2 */
SELECT * FROM movies ORDER BY year;

/* Task 3 */
INSERT INTO directors(first, last, country) VALUES ("Jean-Pierre", "Jeunet", "France");

/* Task 4 */
SELECT director_id FROM directors;

/* Task 5 */
INSERT INTO movies(title, year, director_id) VALUES ("Amelie", 2001, 2)

/* Task 6 */
SELECT * FROM directors ORDER BY country;

/* Task 7 */
 SELECT * FROM movies
    JOIN directors
    ON movies.title = directors.country;

/* Task 8 */
SELECT * FROM movies;
    JOIN directors
    ON movies.title = (directors.last AND directors.first);