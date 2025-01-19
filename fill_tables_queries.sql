INSERT INTO [User] (username, email, [password], full_name, age) 
VALUES 
('john_doe', 'john.doe@example.com', 'password123', 'John Doe', 25),
('jane_smith', 'jane.smith@example.com', 'pass456', 'Jane Smith', 30),
('alice_wonder', 'alice.wonder@example.com', 'alicepass', 'Alice Wonder', 22),
('bob_builder', 'bob.builder@example.com', 'bobpass', 'Bob Builder', 40),
('charlie_chaplin', 'charlie.chaplin@example.com', 'charliepass', 'Charlie Chaplin', 50),
('diana_ross', 'diana.ross@example.com', 'dianapass', 'Diana Ross', 65),
('edward_norton', 'edward.norton@example.com', 'edwardpass', 'Edward Norton', 45),
('fiona_green', 'fiona.green@example.com', 'fionapass', 'Fiona Green', 28),
('george_clooney', 'george.clooney@example.com', 'georgepass', 'George Clooney', 60),
('hannah_montana', 'hannah.montana@example.com', 'hannahpass', 'Hannah Montana', 20);

INSERT INTO Movie_Series (title, genre, revenue, release_date, [type], imdb_rating)
VALUES
('Inception', 'Sci-Fi', 829895144, '2010-07-16', 'Movie', 8.8),
('The Dark Knight', 'Action', 1004558444, '2008-07-18', 'Movie', 9.0),
('Breaking Bad', 'Drama', NULL, '2008-01-20', 'Series', 9.5),
('Stranger Things', 'Horror', NULL, '2016-07-15', 'Series', 8.7),
('The Matrix', 'Sci-Fi', 463517383, '1999-03-31', 'Movie', 8.7),
('Game of Thrones', 'Fantasy', NULL, '2011-04-17', 'Series', 9.3),
('Interstellar', 'Sci-Fi', 677471339, '2014-11-07', 'Movie', 8.6),
('The Witcher', 'Fantasy', NULL, '2019-12-20', 'Series', 8.2),
('Avengers: Endgame', 'Action', 2797800564, '2019-04-26', 'Movie', 8.4),
('The Crown', 'Drama', NULL, '2016-11-04', 'Series', 8.7),
('Titanic', 'Romance', 2187463944, '1997-12-19', 'Movie', 7.8),
('Friends', 'Comedy', NULL, '1994-09-22', 'Series', 8.9),
('The Lord of the Rings: The Return of the King', 'Fantasy', 1140684141, '2003-12-17', 'Movie', 8.9),
('Black Mirror', 'Sci-Fi', NULL, '2011-12-04', 'Series', 8.8),
('Jurassic Park', 'Adventure', 1039473447, '1993-06-11', 'Movie', 8.1),
('The Mandalorian', 'Action', NULL, '2019-11-12', 'Series', 8.7),
('Forrest Gump', 'Drama', 678226205, '1994-07-06', 'Movie', 8.8),
('The Office', 'Comedy', NULL, '2005-03-24', 'Series', 8.9),
('Gladiator', 'Action', 460583960, '2000-05-05', 'Movie', 8.5),
('Sherlock', 'Mystery', NULL, '2010-07-25', 'Series', 9.1);

-- Inserting seasons for Breaking Bad (production_id = 5)
INSERT INTO Series_Season (season_number) VALUES (1), (2);

-- Inserting seasons for Stranger Things (production_id = 9)
INSERT INTO Series_Season (season_number) VALUES (1), (2);

-- Inserting seasons for Game of Thrones (production_id = 13)
INSERT INTO Series_Season (season_number) VALUES (1), (2);

-- Inserting seasons for The Witcher (production_id = 17)
INSERT INTO Series_Season (season_number) VALUES (1), (2);

-- Inserting seasons for The Crown (production_id = 21)
INSERT INTO Series_Season (season_number) VALUES (1), (2);

-- Inserting seasons for Friends (production_id = 25)
INSERT INTO Series_Season (season_number) VALUES (1), (2);

-- Inserting seasons for Black Mirror (production_id = 29)
INSERT INTO Series_Season (season_number) VALUES (1), (2);

-- Inserting seasons for The Mandalorian (production_id = 33)
INSERT INTO Series_Season (season_number) VALUES (1), (2);

-- Inserting seasons for The Office (production_id = 37)
INSERT INTO Series_Season (season_number) VALUES (1), (2);

-- Inserting seasons for Sherlock (production_id = 41)
INSERT INTO Series_Season (season_number) VALUES (1), (2);

-- Linking seasons for Breaking Bad (production_id = 5)
INSERT INTO Season_Of_Series (season_id, production_id)
VALUES (2, 5), (4, 5);

-- Linking seasons for Stranger Things (production_id = 9)
INSERT INTO Season_Of_Series (season_id, production_id)
VALUES (6, 9), (8, 9);

-- Linking seasons for Game of Thrones (production_id = 13)
INSERT INTO Season_Of_Series (season_id, production_id)
VALUES (10, 13), (12, 13);

-- Linking seasons for The Witcher (production_id = 17)
INSERT INTO Season_Of_Series (season_id, production_id)
VALUES (14, 17), (16, 17);

-- Linking seasons for The Crown (production_id = 21)
INSERT INTO Season_Of_Series (season_id, production_id)
VALUES (18, 21), (20, 21);

-- Linking seasons for Friends (production_id = 25)
INSERT INTO Season_Of_Series (season_id, production_id)
VALUES (22, 25), (24, 25);

-- Linking seasons for Black Mirror (production_id = 29)
INSERT INTO Season_Of_Series (season_id, production_id)
VALUES (26, 29), (28, 29);

-- Linking seasons for The Mandalorian (production_id = 33)
INSERT INTO Season_Of_Series (season_id, production_id)
VALUES (30, 33), (32, 33);

-- Linking seasons for The Office (production_id = 37)
INSERT INTO Season_Of_Series (season_id, production_id)
VALUES (34, 37), (36, 37);

-- Linking seasons for Sherlock (production_id = 41)
INSERT INTO Season_Of_Series (season_id, production_id)
VALUES (38, 41), (40, 41);

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
(9.3, 'A must-watch for everyone.'),
(7.5, 'Interesting concept, average execution.'),
(8.7, 'Highly recommended!'),
(6.0, 'Not my cup of tea.'),
(9.1, 'Brilliant direction and screenplay.'),
(7.9, 'Worth watching once.'),
(8.3, 'Engaging and well-paced.'),
(6.7, 'Could have been shorter.'),
(9.4, 'A modern classic!'),
(7.0, 'Good for a one-time watch.');

INSERT INTO Lists (list_name, access, [type])
VALUES
('My Favorite Movies', 'public', 'watch'),
('Top Sci-Fi Films', 'public', 'viewed'),
('Private Watchlist', 'private', 'watch'),
('Classic Movies', 'public', 'viewed'),
('Must-Watch Series', 'public', 'watch'),
('Downloaded Movies', 'private', 'download'),
('Best of 2023', 'public', 'viewed'),
('Family Movies', 'private', 'watch'),
('Horror Nights', 'public', 'viewed'),
('Action Packed', 'public', 'watch'),
('Romantic Comedies', 'private', 'viewed'),
('Documentaries', 'public', 'watch'),
('Top Rated on IMDb', 'public', 'viewed'),
('My Downloads', 'private', 'download'),
('Cult Classics', 'public', 'watch'),
('Kids Movies', 'private', 'viewed'),
('Thriller List', 'public', 'watch'),
('Award Winners', 'public', 'viewed'),
('90s Nostalgia', 'private', 'watch'),
('Hidden Gems', 'public', 'viewed');

INSERT INTO Identifier DEFAULT VALUES;
GO 20

INSERT INTO People (full_name)
VALUES
('Christopher Nolan'),
('Leonardo DiCaprio'),
('Heath Ledger'),
('Bryan Cranston'),
('Aaron Paul'),
('David Fincher'),
('Winona Ryder'),
('Millie Bobby Brown'),
('Peter Dinklage'),
('Emilia Clarke'),
('Matthew McConaughey'),
('Henry Cavill'),
('Robert Downey Jr.'),
('Scarlett Johansson'),
('Quentin Tarantino'),
('Meryl Streep'),
('Tom Hanks'),
('Emma Watson'),
('Daniel Radcliffe'),
('Martin Scorsese');

INSERT INTO Company (legal_name)
VALUES
('Warner Bros. Pictures'),
('Paramount Pictures'),
('Universal Pictures'),
('Sony Pictures Entertainment'),
('Walt Disney Studios'),
('Netflix Studios'),
('HBO Productions'),
('Marvel Studios'),
('Pixar Animation Studios'),
('20th Century Studios'),
('Lucasfilm Ltd.'),
('DreamWorks Animation'),
('Legendary Entertainment'),
('New Line Cinema'),
('Miramax Films'),
('Focus Features'),
('A24 Films'),
('Amazon Studios'),
('Apple Studios'),
('BBC Films');

INSERT INTO User_Created_Rating ([user_id], rating_id, date_created)
VALUES
(1, 1, '2023-01-15 10:30:00'),
(2, 2, '2023-02-20 14:45:00'),
(3, 3, '2023-03-05 09:15:00'),
(4, 4, '2023-04-10 16:20:00'),
(5, 5, '2023-05-12 11:00:00'),
(6, 6, '2023-06-18 13:10:00'),
(7, 7, '2023-07-22 08:45:00'),
(8, 8, '2023-08-30 17:30:00'),
(9, 9, '2023-09-05 12:25:00'),
(10, 10, '2023-10-10 15:40:00'),
(1, 11, '2023-01-20 10:35:00'),
(2, 12, '2023-02-25 14:50:00'),
(3, 13, '2023-03-10 09:20:00'),
(4, 14, '2023-04-15 16:25:00'),
(5, 15, '2023-05-17 11:05:00'),
(6, 16, '2023-06-23 13:15:00'),
(7, 17, '2023-07-27 08:50:00'),
(8, 18, '2023-09-01 17:35:00'),
(9, 19, '2023-09-10 12:30:00'),
(10, 20, '2023-10-15 15:45:00');

INSERT INTO User_Created_List ([user_id], list_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(1, 11),
(2, 12),
(3, 13),
(4, 14),
(5, 15),
(6, 16),
(7, 17),
(8, 18),
(9, 19),
(10, 20);

INSERT INTO Added_To_List (id, list_id, date_added)
VALUES
(1, 1, '2023-01-15 10:30:00'),
(2, 2, '2023-02-20 14:45:00'),
(3, 3, '2023-03-05 09:15:00'),
(4, 4, '2023-04-10 16:20:00'),
(5, 5, '2023-05-12 11:00:00'),
(6, 6, '2023-06-18 13:10:00'),
(7, 7, '2023-07-22 08:45:00'),
(8, 8, '2023-08-30 17:30:00'),
(9, 9, '2023-09-05 12:25:00'),
(10, 10, '2023-10-10 15:40:00'),
(11, 11, '2023-01-20 10:35:00'),
(12, 12, '2023-02-25 14:50:00'),
(13, 13, '2023-03-10 09:20:00'),
(14, 14, '2023-04-15 16:25:00'),
(15, 15, '2023-05-17 11:05:00'),
(16, 16, '2023-06-23 13:15:00'),
(17, 17, '2023-07-27 08:50:00'),
(18, 18, '2023-09-01 17:35:00'),
(19, 19, '2023-09-10 12:30:00'),
(20, 20, '2023-10-15 15:45:00');

INSERT INTO Production_Connect_Identifier (id, production_id)
VALUES
(1, 1),  -- Inception
(2, 3),  -- The Dark Knight
(3, 5),  -- Breaking Bad
(4, 7),  -- Stranger Things
(5, 9),  -- The Matrix
(6, 11), -- Game of Thrones
(7, 13), -- Interstellar
(8, 15), -- The Witcher
(9, 17), -- Avengers: Endgame
(10, 19), -- The Crown
(11, 21), -- Titanic
(12, 23), -- Friends
(13, 25), -- The Lord of the Rings: The Return of the King
(14, 27), -- Black Mirror
(15, 29), -- Jurassic Park
(16, 31), -- The Mandalorian
(17, 33), -- Forrest Gump
(18, 35), -- The Office
(19, 37), -- Gladiator
(20, 39); -- Sherlock

INSERT INTO Season_Connect_Identifier (id, season_id)
VALUES
(1, 2),   -- Season 1 of Breaking Bad
(2, 4),   -- Season 2 of Breaking Bad
(3, 6),   -- Season 1 of Stranger Things
(4, 8),   -- Season 2 of Stranger Things
(5, 10),  -- Season 1 of Game of Thrones
(6, 12),  -- Season 2 of Game of Thrones
(7, 14),  -- Season 1 of The Witcher
(8, 16),  -- Season 2 of The Witcher
(9, 18),  -- Season 1 of The Crown
(10, 20), -- Season 2 of The Crown
(11, 22), -- Season 1 of Friends
(12, 24), -- Season 2 of Friends
(13, 26), -- Season 1 of Black Mirror
(14, 28), -- Season 2 of Black Mirror
(15, 30), -- Season 1 of The Mandalorian
(16, 32), -- Season 2 of The Mandalorian
(17, 34), -- Season 1 of The Office
(18, 36), -- Season 2 of The Office
(19, 38), -- Season 1 of Sherlock
(20, 40); -- Season 2 of Sherlock

INSERT INTO Produced_By (production_id, company_id)
VALUES
(1, 1),   -- Inception produced by Warner Bros. Pictures
(3, 1),   -- The Dark Knight produced by Warner Bros. Pictures
(5, 6),   -- Breaking Bad produced by Netflix Studios
(7, 6),   -- Stranger Things produced by Netflix Studios
(9, 2),   -- The Matrix produced by Paramount Pictures
(11, 7),  -- Game of Thrones produced by HBO Productions
(13, 1),  -- Interstellar produced by Warner Bros. Pictures
(15, 8),  -- The Witcher produced by Marvel Studios
(17, 5),  -- Avengers: Endgame produced by Walt Disney Studios
(19, 7),  -- The Crown produced by HBO Productions
(21, 2),  -- Titanic produced by Paramount Pictures
(23, 6),  -- Friends produced by Netflix Studios
(25, 3),  -- The Lord of the Rings: The Return of the King produced by Universal Pictures
(27, 6),  -- Black Mirror produced by Netflix Studios
(29, 3),  -- Jurassic Park produced by Universal Pictures
(31, 5),  -- The Mandalorian produced by Walt Disney Studios
(33, 2),  -- Forrest Gump produced by Paramount Pictures
(35, 6),  -- The Office produced by Netflix Studios
(37, 1),  -- Gladiator produced by Warner Bros. Pictures
(39, 20); -- Sherlock produced by BBC Films

INSERT INTO Cast_Crew (production_id, person_id, [role])
VALUES
(1, 1, 'director'),   -- Christopher Nolan directed Inception
(1, 2, 'actor'),      -- Leonardo DiCaprio acted in Inception
(3, 1, 'director'),   -- Christopher Nolan directed The Dark Knight
(3, 3, 'actor'),      -- Heath Ledger acted in The Dark Knight
(5, 4, 'actor'),      -- Bryan Cranston acted in Breaking Bad
(5, 5, 'actor'),      -- Aaron Paul acted in Breaking Bad
(7, 6, 'director'),   -- David Fincher directed Stranger Things
(7, 7, 'actor'),      -- Winona Ryder acted in Stranger Things
(9, 8, 'actor'),      -- Millie Bobby Brown acted in The Matrix
(11, 9, 'actor'),     -- Peter Dinklage acted in Game of Thrones
(11, 10, 'actor'),    -- Emilia Clarke acted in Game of Thrones
(13, 1, 'director'),  -- Christopher Nolan directed Interstellar
(13, 11, 'actor'),    -- Matthew McConaughey acted in Interstellar
(15, 12, 'actor'),    -- Henry Cavill acted in The Witcher
(17, 13, 'actor'),    -- Robert Downey Jr. acted in Avengers: Endgame
(17, 14, 'actor'),    -- Scarlett Johansson acted in Avengers: Endgame
(19, 15, 'director'), -- Quentin Tarantino directed The Crown
(21, 16, 'actor'),    -- Meryl Streep acted in Titanic
(23, 17, 'actor'),    -- Tom Hanks acted in Friends
(25, 18, 'actor');    -- Emma Watson acted in The Lord of the Rings: The Return of the King

INSERT INTO Rating_For_Movie (production_id, rating_id)
VALUES
(1, 1),   -- Rating 1 for Inception
(3, 2),   -- Rating 2 for The Dark Knight
(5, 3),   -- Rating 3 for Breaking Bad
(7, 4),   -- Rating 4 for Stranger Things
(9, 5),   -- Rating 5 for The Matrix
(11, 6),  -- Rating 6 for Game of Thrones
(13, 7),  -- Rating 7 for Interstellar
(15, 8),  -- Rating 8 for The Witcher
(17, 9),  -- Rating 9 for Avengers: Endgame
(19, 10), -- Rating 10 for The Crown
(21, 11), -- Rating 11 for Titanic
(23, 12), -- Rating 12 for Friends
(25, 13), -- Rating 13 for The Lord of the Rings: The Return of the King
(27, 14), -- Rating 14 for Black Mirror
(29, 15), -- Rating 15 for Jurassic Park
(31, 16), -- Rating 16 for The Mandalorian
(33, 17), -- Rating 17 for Forrest Gump
(35, 18), -- Rating 18 for The Office
(37, 19), -- Rating 19 for Gladiator
(39, 20); -- Rating 20 for Sherlock
