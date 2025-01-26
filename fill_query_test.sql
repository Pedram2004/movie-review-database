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


INSERT INTO List ([user_id], list_name, access, [type]) VALUES
(1, 'Favs Action Movies', 'private', 'watch'),
(1, 'User 1 Viewed', 'private', 'viewed'),
(1, 'User 1 Download', 'private', 'download'),
(2, 'User 2 Viewed', 'private', 'viewed'),
(2, 'Fantasy Shit', 'public', 'watch'),
(3, 'User 3 Download', 'private', 'download'),
(4, 'Drugs', 'public', 'watch'),
(4, 'Fun Series', 'public', 'watch'),
(5, 'User 5 Viewed', 'private', 'viewed'),
(6, 'Spooky Nights', 'private', 'watch'),
(7, 'User 7 Download', 'private', 'download'),
(8, 'Chilling', 'private', 'watch');


INSERT INTO Production (title, genre, revenue, release_date, [type], imdb_rating) VALUES
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
('Inception', 'Sci-Fi', 839000000, '2010-07-16', 'Movie', 8.8),
('How I Met Your Mother', 'Comedy', NULL, '2005-09-19', 'Series', 8.3);


INSERT INTO Rating ([user_id], production_id, date_created, rating_value, review_text) VALUES
(1, 2, '2023-10-01 10:00:00', 8.5, 'Boring at First, But Amazing in the End'),
(1, 12, '2022-09-21 04:20:08', 6.2, 'did not like the plot'),
(2, 1, '2020-12-11 20:53:42', 4.0, 'َAre we now just making anythin?'),
(3, 11, '2024-01-01 13:36:19', 9.7, 'What the hell happend at the end.'),
(3, 2, '2001-09-11 10:03:24', 9.0, 'Exploding at the end.'),
(4, 2, '2021-10-18 18:29:10', 7.5, 'Fantastic Acting by Brian Cranston.'),
(5, 2, '2024-04-14 02:10:20', 4.0, 'Pure BS. Do NOT RECOMMEND.'),
(6, 2, '2023-11-07 13:54:44', 9.5, 'Gotta Watch it More than Once.'),
(7, 10, '2019-02-09 16:42:10', 2.5, 'did not watch past the first season.'),
(8, 10, '2015-07-03 14:05:20', 8.9, 'LOL!! It has everything.'),
(6, 10, '2022-05-23 23:04:40', 9.5, 'you just can not love all the characters.'),
(6, 11, '2020-11-21 09:34:31', 7.5, 'Dicaprio nails it like everytime.'),
(9, 9, '2018-08-28 19:56:47', 10.0, 'can Peter Jackson make something remotely bad.'),
(3, 4, '2025-01-26 14:07:35', 3.5, 'The last season was just stiched together terribly.'),
(2, 3, '2023-10-01 17:41:38', 8.5, 'Nolan created the best superhero movie of all times.');


INSERT INTO People (full_name) VALUES
('Sam Worthington'), ('Zoe Saldana'), ('James Cameron'), --Avatar
('Bryan Cranston'), ('Aaron Paul'), ('Vince Gilligan'), -- Breaking Bad
('Christian Bale'), ('Heath Ledger'), ('Christopher Nolan'), -- The Dark Knight
('Emilia Clarke'), ('Kit Harington'), ('David Benioff'), -- Game of Thrones
('Leonardo DiCaprio'), ('Kate Winslet'), -- Titanic
('Jennifer Aniston'), ('David Schwimmer'), ('Kevin S. Bright'), -- Friends
('Robert Downey Jr.'), ('Chris Evans'), ('Anthony Russo'), -- Avengers : End Game
('Millie Bobby Brown'), ('Finn Wolfhard'), ('Matt Duffer'), ('Ross Duffer'), -- Stranger Things
('Elijah Wood'), ('Ian McKellen'), ('Peter Jackson'), -- Lord of The Rings : Return of The King
('Steve Carell'), ('John Krasinski'), ('Greg Daniels'), -- The Office
('Joseph Gordon-Levitt'), -- Inception
('Josh Radnor'), ('Neil Patrick Harris'), ('Cobie Smulders'), ('Alyson Hannigan'), ('Pamela Fryman'); -- HIMYM


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


INSERT INTO Part(production_id, part_number) VALUES 
(2, 1), (2, 2), (2, 3), (2, 4), (2, 5), -- Breaking Bad
(4, 1), (4, 2), (4, 3), (4, 4), (4, 5), (4, 6), (4, 7), (4, 8), -- GOT
(6, 1), (6, 2), (6, 3), (6, 4), (6, 5), (6, 6), (6, 7), (6, 8), (6, 9), (6, 10), -- Friends
(8, 1), (8, 2), (8, 3), (8, 4), -- Stranger Things
(10, 1), (10, 2), (10, 3), (10, 4), (10, 5), (10, 6), (10, 7), (10, 8), (10, 9), -- The Office
(12, 1), (12, 2), (12, 3), (12, 4), (12, 5), (12, 6), (12, 7), (12, 8), (12, 9); -- HIMYM


INSERT INTO Cast_Crew (production_id, person_id, [role])
VALUES
-- Avatar
(1, 1, 'actor'),   -- Sam Worthington
(1, 2, 'actor'),   -- Zoe Saldana
(1, 3, 'director'),-- James Cameron
-- Breaking Bad 
(2, 4, 'actor'),   -- Bryan Cranston
(2, 5, 'actor'),   -- Aaron Paul
(2, 6, 'director'),-- Vince Gilligan
-- The Dark Knight 
(3, 7, 'actor'),   -- Christian Bale
(3, 8, 'actor'),   -- Heath Ledger
(3, 9, 'director'),-- Christopher Nolan
-- Game of Thrones
(4, 10, 'actor'),  -- Emilia Clarke
(4, 11, 'actor'),  -- Kit Harington
(4, 12, 'director'),-- David Benioff
-- Titanic 
(5, 13, 'actor'),  -- Leonardo DiCaprio
(5, 14, 'actor'),  -- Kate Winslet
(5, 3, 'director'),-- James Cameron
-- Friends 
(6, 15, 'actor'),  -- Jennifer Aniston
(6, 16, 'actor'),  -- David Schwimmer
(6, 17, 'director'),-- Kevin S. Bright
-- Avengers: Endgame 
(7, 18, 'actor'),  -- Robert Downey Jr.
(7, 19, 'actor'),  -- Chris Evans
(7, 20, 'director'),-- Anthony Russo
-- Stranger Things
(8, 21, 'actor'),  -- Millie Bobby Brown
(8, 22, 'actor'),  -- Finn Wolfhard
(8, 23, 'director'),-- Matt Duffer
(8, 24, 'director'),-- Ross Duffer
-- The Lord of the Rings: The Return of the King 
(9, 25, 'actor'),  -- Elijah Wood
(9, 26, 'actor'),  -- Ian McKellen
(9, 27, 'director'),-- Peter Jackson
-- The Office
(10, 28, 'actor'), -- Steve Carell
(10, 29, 'actor'), -- John Krasinski
(10, 30, 'director'),-- Greg Daniels
-- Inception 
(11, 13, 'actor'), -- Leonardo DiCaprio
(1, 31, 'actor'), -- Joseph Gordon-Levitt
(11, 9, 'director'), -- Christopher Nolan
-- HIMYM 
(12, 32, 'actor'), -- Josh Radnor
(12, 33, 'actor'), -- Neil Patrick Harris
(12, 34, 'actor'), -- Cobie Smulders
(12, 35, 'actor'), -- Alyson Hannigan
(12, 36, 'director'); -- Pamela Fryman


INSERT INTO Produced_By (production_id, company_id)
VALUES
-- Avatar 
(1, 1),  -- 20th Century Fox
(1, 2),  -- Lightstorm Entertainment
-- Breaking Bad
(2, 3),  -- Sony Pictures Television
-- The Dark Knight 
(3, 4),  -- Warner Bros. Pictures
(3, 6),  -- Legendary Entertainment
-- Game of Thrones 
(4, 7),  -- HBO Entertainment
-- Titanic 
(5, 1),  -- 20th Century Fox
(5, 8),  -- Paramount Pictures
-- Friends 
(6, 5),  -- Warner Bros. Television
-- Avengers: Endgame
(7, 9),  -- Marvel Studios
-- Stranger Things 
(8, 10), -- 21 Laps Entertainment
(8, 11), -- Netflix
-- The Lord of the Rings: The Return of the King 
(9, 12), -- New Line Cinema
(9, 13), -- WingNut Films
-- The Office 
(10, 14), -- Reveille Productions
(10, 15), -- Universal Television
-- Inception
(11, 4),  -- Warner Bros. Pictures
(11, 6),  -- Legendary Entertainment
(11, 16); -- Syncopy


INSERT INTO Added_To_List(production_id, part_number, list_id, date_added) VALUES
(1, 0, 1, '2024-10-02 17:04:20'),
(7, 0, 1, '2024-10-02 18:34:13'),
(9, 0, 1, '2024-12-28 20:51:57'),
(2, 1, 2, '2022-11-09 22:23:45'),
(2, 2, 2, '2023-01-14 23:44:49'),
(2, 3, 2, '2023-01-22 18:54:00'),
(2, 4, 2, '2023-02-07 20:00:03'),
(10, 0, 2, '2023-04-12 22:58:40'),
(9, 0, 5, '2018-12-16 17:46:20'),
(3, 0, 6, '2024-05-25 18:12:16'),
(6, 1, 8, '2014-04-05 18:35:38'),
(6, 3, 8, '2021-09-27 20:12:59'),
(12, 1, 8, '2023-06-04 07:11:39'),
(12, 2, 8, '2022-10-09 08:03:12'),
(12, 3, 8, '2020-10-23 14:05:55'),
(10, 4, 8, '2022-02-25 07:14:10'),
(10, 2, 8, '2021-01-24 10:16:56'),
(2, 0, 7, '2023-11-18 22:17:13'),
(11, 0, 11, '2023-05-27 20:56:51'),
(8, 2, 11, '2023-08-18 20:32:43');
