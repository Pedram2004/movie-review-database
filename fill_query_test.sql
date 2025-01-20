INSERT INTO [User] (username, email, [password], full_name, age) VALUES
('jdoe', 'johndoe@example.com', 'password123', 'John Doe', 28),
('asmith', 'annasmith@example.com', 'securePass456', 'Anna Smith', 32),
('mbrown', 'michaelbrown@example.com', 'qwerty789', 'Michael Brown', 24),
('lsanchez', 'laurasanchez@example.com', 'LauraRocks!', 'Laura Sanchez', 29),
('klee', 'karenlee@example.com', 'kl123secure', 'Karen Lee', 35),
('rwhite', 'robertwhite@example.com', 'pass4white', 'Robert White', 41),
('nnguyen', 'nancynguyen@example.com', 'nancy_2023', 'Nancy Nguyen', 27),
('tjones', 'tommiejones@example.com', 'simpleTom1', 'Tommie Jones', 22),
('ppatel', 'priyapatel@example.com', 'priya#1985', 'Priya Patel', 38),
('emiller', 'ericmiller@example.com', 'ezMiller2021', 'Eric Miller', 31);


INSERT INTO Movie_Series (title, genre, revenue, release_date, [type], imdb_rating) VALUES
('Avatar', 'Sci-Fi', 2923000000, '2009-12-18', 'Movie', 7.9),
('Breaking Bad', 'Crime', NULL, '2008-01-20', 'Series', 9.5),
('The Dark Knight', 'Action', 1006000000, '2008-07-18', 'Movie', 9.0),
('Game of Thrones', 'Fantasy', NULL, '2011-04-17', 'Series', 9.2),
('Titanic', 'Romance', 2264000000, '1997-12-19', 'Movie', 7.9),
('Friends', 'Comedy', NULL, '1994-09-22', 'Series', 8.9),
('Avengers: Endgame', 'Action', 2799000000, '2019-04-26', 'Movie', 8.4),
('Stranger Things', 'Drama', NULL, '2016-07-15', 'Series', 8.7),
('The Lord of the Rings: The Return of the King', 'Fantasy', 1151000000, '2003-12-17', 'Movie', 9.0),
('The Office', 'Comedy', NULL, '2005-03-24', 'Series', 9.0),
('Inception', 'Sci-Fi', 839000000, '2010-07-16', 'Movie', 8.8);


INSERT INTO Series_Season (season_number) VALUES 
(1), (2), (3), (4), (5), -- Breaking Bad
(1), (2), (3), (4), (5), (6), (7), (8), -- Game of Thrones
(1), (2), (3), (4), (5), (6), (7), (8), (9), (10), --Friends
(1), (2), (3), (4), -- Stranger Things
(1), (2), (3), (4), (5), (6), (7), (8), (9); -- The Office


INSERT INTO Rating (rating_value, REVIEW_text)
VALUES
(9.2, 'An absolute masterpiece!'),
(8.5, 'Great storyline and acting.'),
(7.8, 'Enjoyable but predictable.'),
(9.0, 'One of the best series ever made.'),
(6.5, 'Decent, but could have been better.'),
(8.9, 'Kept me on the edge of my seat.'),
(7.2, 'Good, but not great.'),
(9.5, 'A cinematic triumph!'),
(8.1, 'Solid performance by the cast.'),
(6.8, 'Entertaining but forgettable.'),
(9.3, NULL),
(7.5, 'Interesting concept, average execution.'),
(8.7, 'Highly recommended!'),
(6.0, 'Not my cup of tea.'),
(9.1, 'Brilliant direction and screenplay.'),
(7.9, 'Worth watching once.'),
(8.3, NULL),
(6.7, 'Could have been shorter.'),
(9.4, 'A modern classic!'),
(7.0, 'Good for a one-time watch.');

INSERT INTO Lists (list_name, access, [type]) VALUES
('My Downloaded Movies', 'private', 'download'),
('Watched Series', 'private', 'viewed'),
('Classic Sci-Fi Collection', 'public', 'watch'),
('Romantic Favorites', 'public', 'watch'),
('Weekend Binge List', 'private', 'watch'),
('Downloaded Thrillers', 'private', 'download'),
('Viewed Top Dramas', 'private', 'viewed'),
('Family Movie Night Picks', 'private', 'watch'),
('Favorite Animated Films', 'public', 'watch'),
('Hidden Gems to Watch', 'public', 'watch');

INSERT INTO People (full_name) VALUES
('Sam Worthington'), ('Zoe Saldana'), ('James Cameron'), --Avatar
('Bryan Cranston'), ('Aaron Paul'), ('Vince Gilligan'), -- Breaking Bad
('Christian Bale'), ('Heath Ledger'), ('Christopher Nolan'), -- The Dark Knight
('Emilia Clarke'), ('Kit Harington'), ('David Benioff'), -- Game of Thrones
('Leonardo DiCaprio'), ('Kate Winslet'), ('James Cameron'), -- Titanic
('Jennifer Aniston'), ('David Schwimmer'), ('Kevin S. Bright'), -- Friends
('Robert Downey Jr.'), ('Chris Evans'), ('Anthony Russo'), -- Avengers : End Game
('Millie Bobby Brown'), ('Finn Wolfhard'), ('Matt Duffer'), ('Ross Duffer'), -- Stranger Things
('Elijah Wood'), ('Ian McKellen'), ('Peter Jackson'), -- Lord of The Rings : Return of The King
('Steve Carell'), ('John Krasinski'), ('Greg Daniels'), -- The Office
('Joseph Gordon-Levitt'); -- Inception


INSERT INTO Company (legal_name) VALUES 
('20th Century Fox'),
('Lightstorm Entertainment'),
('Sony Pictures Television'), 
('Warner Bros. Pictures'), 
('Warner Bros. Television'),
('Legendary Entertainment'),
('HBO Entertainment'),
('Paramount Pictures'), 
('Marvel Studios'),
('21 Laps Entertainment'),
('Netflix'),
('New Line Cinema'),
('WingNut Films'),
('Universal Television'),
('Reveille Productions'),
('Syncopy');

select * from Identifier;
select * from Series_Season;
select * from Movie_Series;
select * from [User];
select * from Rating;
select * from lists;
select * from people;
delete from lists;