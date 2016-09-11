
DROP SCHEMA IF EXISTS movie_ratings;

CREATE SCHEMA movie_ratings;
USE movie_ratings;

CREATE TABLE movies (
movie_id INT PRIMARY KEY,
title VARCHAR(75) NOT NULL,
genre VARCHAR(25) NOT NULL,
dom_box_office INT NOT NULL,
world_box_office INT NOT NULL, 
studio VARCHAR(25) NOT NULL,
mpaa_rating VARCHAR(5),
prod_budg INT,
imdb_rating DEC(3,1) NOT NULL,
open_dt DATE NOT NULL,
close_dt DATE
); 

INSERT INTO movies VALUES(1, 'Hilary''s America', 'Documentary', 13, 13, 'Quality Flix', 'PG-13', NULL, 5.9, 20160715, NULL);
INSERT INTO movies VALUES(2, 'The Jungle Book', 'Adventure', 364, 964, 'Buena Vista', 'PG', 175, 7.7, 20160415, NULL);
INSERT INTO movies VALUES(3, 'Deadpool', 'Action', 363, 783, 'Fox', 'R', 58, 8.1, 20160212, 20160616);
INSERT INTO movies VALUES(4, 'Finding Dory', 'Animation', 483, 945, 'Buena Vista', 'PG', 200, 7.8, 20160617, NULL);
INSERT INTO movies VALUES(5, 'Central Intelligence', 'Comedy', 127, 214, 'Warner Bros', 'PG-13', 50, 6.5, 20160617, 20160901);
INSERT INTO movies VALUES(6, 'Bad Moms', 'Comedy', 106, 144, 'STX Entertainment', 'R', 20, 6.7, 20160729, NULL);

CREATE TABLE raters (
rater_id INT PRIMARY KEY,
last_name VARCHAR(25) NOT NULL,
first_name VARCHAR(25) NOT NULL,
gender CHAR(1) NOT NULL,
dob DATE NOT NULL,
occupation VARCHAR(25),
zip CHAR(5)
);

INSERT INTO raters VALUES(1, 'Johnston', 'Marcus', 'M', 19770128, 'Chef', '16854');
INSERT INTO raters VALUES(2, 'Chadwick', 'Bobby','M', 19801214, 'Doctor', '16501');
INSERT INTO raters VALUES(3, 'Johnston', 'Lucy', 'F', 20050805, 'Student', '16854');
INSERT INTO raters VALUES(4, 'Grasso', 'Beth', 'F', 19781001, 'Engineer', '14200');
INSERT INTO raters VALUES(5, 'Smith', 'Paul', 'M', 19450507, 'Lawyer', '16803');
INSERT INTO raters VALUES(6, 'Smith', 'Babs', 'F',19460324, 'Retired', '16803');

CREATE TABLE rating_survey (
rater_id INT NOT NULL REFERENCES raters(rater_id),
movie_id INT NOT NULL REFERENCES movies(movie_id),
rating INT,
comments VARCHAR(100)
);

INSERT INTO rating_survey VALUES(1, 1, 2, 'Entertaining but it''s a work of fiction');
INSERT INTO rating_survey VALUES(1, 2, 3, 'My kid loved it; so I can''t hate it');
INSERT INTO rating_survey VALUES(1, 3, 5, 'Intense!');
INSERT INTO rating_survey VALUES(1, 4, 4, 'Pretty good for a cartoon');
INSERT INTO rating_survey VALUES(1, 5, 4, 'Freakin'' Hilarious');
INSERT INTO rating_survey VALUES(1, 6, 3, 'I thought it was a chick flick, but it''s not');
INSERT INTO rating_survey VALUES(2, 1, 1, 'Why did I pay 10 bucks to see this crap?');
INSERT INTO rating_survey VALUES(2, 2, 4, 'Loved the CGI.');
INSERT INTO rating_survey VALUES(2, 3, 5, 'I love superhero movies!');
INSERT INTO rating_survey VALUES(2, 4, 4, 'Loved the message of this movie!');
INSERT INTO rating_survey VALUES(2, 5, 5, 'Who doesn''t love The Rock?');
INSERT INTO rating_survey VALUES(2, 6, NULL, 'Not going to see it--it''s a movie for the ladies, right?');
INSERT INTO rating_survey VALUES(3, 1, 2, 'Boring, except for the cuss words.');
INSERT INTO rating_survey VALUES(3, 2, 5, 'I wanna live in the jungle!');
INSERT INTO rating_survey VALUES(3, 3, NULL, 'Dad won''t let me see it.');
INSERT INTO rating_survey VALUES(3, 4, 5, 'I wanna live in the ocean!');
INSERT INTO rating_survey VALUES(3, 5, NULL, 'Dad said it was too mature');
INSERT INTO rating_survey VALUES(3, 6, NULL, 'I''m too young to see it.');
INSERT INTO rating_survey VALUES(4, 1, 1, 'I hate politics.');
INSERT INTO rating_survey VALUES(4, 2, 3, 'OK, I guess.');
INSERT INTO rating_survey VALUES(4, 3, NULL, 'Ugh, another comic book movie - not going to do it.');
INSERT INTO rating_survey VALUES(4, 4, NULL , 'Pass - another cartoon.');
INSERT INTO rating_survey VALUES(4, 5, 1, 'Disappointing.');
INSERT INTO rating_survey VALUES(4, 6, 3, 'OK, but I should have waited until it came to Netflix.');
INSERT INTO rating_survey VALUES(5, 1, 5, 'It really opened my eyes to Clinton corruption!');
INSERT INTO rating_survey VALUES(5, 2, 5, 'I loved this story when I was child.');
INSERT INTO rating_survey VALUES(5, 3, 3, 'Entertaining, but not my favorite genre.');
INSERT INTO rating_survey VALUES(5, 4, 3, 'Not as good as Finding Nemo.');
INSERT INTO rating_survey VALUES(5, 5, 3, 'I both laughed and slept during this movie.');
INSERT INTO rating_survey VALUES(5, 6, 4, 'Surprisingly funny.');
INSERT INTO rating_survey VALUES(6, 1, 5, 'Hilary is evil!');
INSERT INTO rating_survey VALUES(6, 2, 4, 'Great, but not as good as the 1967 film');
INSERT INTO rating_survey VALUES(6, 3, 2, 'Too gory!');
INSERT INTO rating_survey VALUES(6, 4, 5, 'Perfect for my granddaughter.');
INSERT INTO rating_survey VALUES(6, 5, 2, 'Not my cup of tea.');
INSERT INTO rating_survey VALUES(6, 6, 5, 'I can''t wait to watch this again on video!');

