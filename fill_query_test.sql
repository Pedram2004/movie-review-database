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


INSERT INTO User_Created_Rating ([user_id], rating_id, date_created)
VALUES
(1, 1, '2023-10-01 10:00:00'),
(1, 2, '2023-10-02 11:15:00'),
(3, 3, '2023-10-03 12:30:00'),
(3, 4, '2023-10-04 13:45:00'),
(5, 5, '2023-10-05 14:00:00'),
(5, 6, '2023-10-06 15:20:00'),
(7, 7, '2023-10-07 16:35:00'),
(7, 8, '2023-10-08 17:50:00'),
(9, 9, '2023-10-09 18:05:00'),
(9, 10, '2023-10-10 19:10:00');


INSERT INTO User_Created_List ([user_id], list_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(4, 4),
(5, 5),
(5, 6),
(5, 7),
(8, 8),
(9, 9),
(10, 10);


INSERT INTO Season_Of_Series (season_id, production_id)
VALUES
(1, 2), (2, 2), (3, 2), (4, 2), (5, 2), -- Breaking Bad (production_id = 2) has 5 seasons
(1, 4), (2, 4), (3, 4), (4, 4), (5, 4), (6, 4), (7, 4), (8, 4), -- Game of Thrones (production_id = 4) has 8 seasons
(1, 6), (2, 6), (3, 6), (4, 6), (5, 6), (6, 6), (7, 6), (8, 6), (9, 6), (10, 6), -- Friends (production_id = 6) has 10 seasons
(1, 8), (2, 8), (3, 8), (4, 8), -- Stranger Things (production_id = 8) has 4 seasons
(1, 10), (2, 10), (3, 10), (4, 10), (5, 10), (6, 10), (7, 10), (8, 10), (9, 10); -- The Office (production_id = 10) has 9 seasons


INSERT INTO Series_Season (season_number)
VALUES
(1), (2), (3), (4), (5), -- Breaking Bad seasons
(1), (2), (3), (4), (5), (6), (7), (8), -- Game of Thrones seasons
(1), (2), (3), (4); -- Stranger Things seasons


-- Inserting data into Produced_By
INSERT INTO Produced_By (production_id, company_id)
VALUES
-- Avatar (production_id = 1)
(1, 1),  -- 20th Century Fox
(1, 2),  -- Lightstorm Entertainment
-- Breaking Bad (production_id = 2)
(2, 3),  -- Sony Pictures Television
-- The Dark Knight (production_id = 3)
(3, 4),  -- Warner Bros. Pictures
(3, 6),  -- Legendary Entertainment
-- Game of Thrones (production_id = 4)
(4, 7),  -- HBO Entertainment
-- Titanic (production_id = 5)
(5, 1),  -- 20th Century Fox
(5, 8),  -- Paramount Pictures
-- Friends (production_id = 6)
(6, 5),  -- Warner Bros. Television
-- Avengers: Endgame (production_id = 7)
(7, 9),  -- Marvel Studios
-- Stranger Things (production_id = 8)
(8, 10), -- 21 Laps Entertainment
(8, 11), -- Netflix
-- The Lord of the Rings: The Return of the King (production_id = 9)
(9, 12), -- New Line Cinema
(9, 13), -- WingNut Films
-- The Office (production_id = 10)
(10, 14), -- Reveille Productions
(10, 15), -- Universal Television
-- Inception (production_id = 11)
(11, 4),  -- Warner Bros. Pictures
(11, 6),  -- Legendary Entertainment
(11, 16); -- Syncopy


INSERT INTO Cast_Crew (production_id, person_id, [role])
VALUES
-- Avatar (production_id = 1)
(1, 1, 'actor'),   -- Sam Worthington
(1, 2, 'actor'),   -- Zoe Saldana
(1, 3, 'director'),-- James Cameron
-- Breaking Bad (production_id = 2)
(2, 4, 'actor'),   -- Bryan Cranston
(2, 5, 'actor'),   -- Aaron Paul
(2, 6, 'director'),-- Vince Gilligan
-- The Dark Knight (production_id = 3)
(3, 7, 'actor'),   -- Christian Bale
(3, 8, 'actor'),   -- Heath Ledger
(3, 9, 'director'),-- Christopher Nolan
-- Game of Thrones (production_id = 4)
(4, 10, 'actor'),  -- Emilia Clarke
(4, 11, 'actor'),  -- Kit Harington
(4, 12, 'director'),-- David Benioff
-- Titanic (production_id = 5)
(5, 13, 'actor'),  -- Leonardo DiCaprio
(5, 14, 'actor'),  -- Kate Winslet
(5, 3, 'director'),-- James Cameron
-- Friends (production_id = 6)
(6, 15, 'actor'),  -- Jennifer Aniston
(6, 16, 'actor'),  -- David Schwimmer
(6, 17, 'director'),-- Kevin S. Bright
-- Avengers: Endgame (production_id = 7)
(7, 18, 'actor'),  -- Robert Downey Jr.
(7, 19, 'actor'),  -- Chris Evans
(7, 20, 'director'),-- Anthony Russo
-- Stranger Things (production_id = 8)
(8, 21, 'actor'),  -- Millie Bobby Brown
(8, 22, 'actor'),  -- Finn Wolfhard
(8, 23, 'director'),-- Matt Duffer
(8, 24, 'director'),-- Ross Duffer
-- The Lord of the Rings: The Return of the King (production_id = 9)
(9, 25, 'actor'),  -- Elijah Wood
(9, 26, 'actor'),  -- Ian McKellen
(9, 27, 'director'),-- Peter Jackson
-- The Office (production_id = 10)
(10, 28, 'actor'), -- Steve Carell
(10, 29, 'actor'), -- John Krasinski
(10, 30, 'director'),-- Greg Daniels
-- Inception (production_id = 11)
(11, 13, 'actor'), -- Leonardo DiCaprio
(11, 31, 'actor'), -- Joseph Gordon-Levitt
(11, 9, 'director');-- Christopher Nolan


INSERT INTO Rating_For_Movie (production_id, rating_id)
VALUES
-- Avatar (production_id = 1)
(1, 1),  -- Rating 1
(1, 2),  -- Rating 2
(1, 3),  -- Rating 3
-- Breaking Bad (production_id = 2)
(2, 4),  -- Rating 4
(2, 5),  -- Rating 5
(2, 6),  -- Rating 6
-- The Dark Knight (production_id = 3)
(3, 7),  -- Rating 7
(3, 8),  -- Rating 8
(3, 9),  -- Rating 9
-- Game of Thrones (production_id = 4)
(4, 10), -- Rating 10
(4, 11), -- Rating 11
(4, 12), -- Rating 12
-- Titanic (production_id = 5)
(5, 13), -- Rating 13
(5, 14), -- Rating 14
(5, 15), -- Rating 15
-- Friends (production_id = 6)
(6, 16), -- Rating 16
(6, 17), -- Rating 17
(6, 18), -- Rating 18
-- Avengers: Endgame (production_id = 7)
(7, 19), -- Rating 19
(7, 20), -- Rating 20
(7, 21), -- Rating 21
-- Stranger Things (production_id = 8)
(8, 22), -- Rating 22
(8, 23), -- Rating 23
(8, 24), -- Rating 24
-- The Lord of the Rings: The Return of the King (production_id = 9)
(9, 25), -- Rating 25
(9, 26), -- Rating 26
(9, 27), -- Rating 27
-- The Office (production_id = 10)
(10, 28), -- Rating 28
(10, 29), -- Rating 29
(10, 30), -- Rating 30
-- Inception (production_id = 11)
(11, 31), -- Rating 31
(11, 32), -- Rating 32
(11, 33); -- Rating 33


select * from Identifier;
select * from Series_Season;
select * from Movie_Series;
select * from [User];
select * from Rating;
select * from lists;
select * from people;
delete from lists;
