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
('The Office', 'Comedy', NULL, '2005-03-24', 'Series', 9.0);

INSERT INTO Series_Season (season_number) VALUES 
(1), (2), (3), (4), (5), -- Breaking Bad
(1), (2), (3), (4), (5), (6), (7), (8), -- Game of Thrones
(1), (2), (3), (4), (5), (6), (7), (8), (9), (10), --Friends
(1), (2), (3), (4), -- Stranger Things
(1), (2), (3), (4), (5), (6), (7), (8), (9); -- The Office


select * from Series_Season;
select * from Movie_Series;
select * from [User];