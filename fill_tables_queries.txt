-- پر کردن جدول User
INSERT INTO User (username, email, password, full_name, age) VALUES
('alice_wonder', 'alice.wonder@example.com', 'alice123', 'Alice Wonderland', 24),
('bob_marley', 'bob.marley@example.com', 'noWomanNoCry', 'Bob Marley', 35),
('charlie_brown', 'charlie.brown@example.com', 'charlie456', 'Charlie Brown', 22),
('diana_prince', 'diana.prince@example.com', 'wonderWoman', 'Diana Prince', 28),
('ethan_hunt', 'ethan.hunt@example.com', 'impossible123', 'Ethan Hunt', 32);

-- پر کردن جدول Lists
INSERT INTO Lists (list_name, access, type) VALUES
('Alice\'s Watchlist 1', 'private', 'watchlist'),
('Alice\'s Watchlist 2', 'public', 'watchlist'),
('Alice\'s Download List', 'private', 'download_list'),
('Alice\'s Watched List', 'private', 'watched_list'),
('Bob\'s Watchlist 1', 'private', 'watchlist'),
('Bob\'s Watchlist 2', 'public', 'watchlist'),
('Bob\'s Download List', 'private', 'download_list'),
('Bob\'s Watched List', 'private', 'watched_list'),
('Charlie\'s Watchlist 1', 'private', 'watchlist'),
('Charlie\'s Watchlist 2', 'public', 'watchlist'),
('Charlie\'s Download List', 'private', 'download_list'),
('Charlie\'s Watched List', 'private', 'watched_list');

-- پر کردن جدول Rating
INSERT INTO Rating (rating_value, rating_text) VALUES
(10.0, 'A masterpiece!'),
(7.5, 'Entertaining, worth a watch.'),
(5.0, 'Mediocre. Could be better.'),
(4.0, 'Disappointing.'),
(9.5, 'Nearly perfect.');

-- پر کردن جدول Person
INSERT INTO Person (full_name) VALUES
('Morgan Freeman'),
('Meryl Streep'),
('Tom Hanks'),
('Scarlett Johansson'),
('Chris Hemsworth');

-- پر کردن جدول Movie
INSERT INTO Movie (title, genre, revenue, release_date, imdb_rating) VALUES
('The Shawshank Redemption', 'Drama', 28341469, '1994-09-23', 9.3),
('Avengers: Endgame', 'Action', 2797800564, '2019-04-26', 8.4),
('Forrest Gump', 'Drama', 678100000, '1994-07-06', 8.8),
('The Dark Knight', 'Action', 1004558444, '2008-07-18', 9.0),
('Interstellar', 'Sci-Fi', 701729206, '2014-11-07', 8.6);

-- پر کردن جدول Company
INSERT INTO Company (legal_name) VALUES
('Paramount Pictures'),
('Universal Pictures'),
('20th Century Studios'),
('Pixar Animation Studios'),
('Sony Pictures Entertainment');

-- پر کردن جدول User_List
INSERT INTO User_List (user_id, list_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12);

-- پر کردن جدول User_Rating
INSERT INTO User_Rating (user_id, rating_id, date_created) VALUES
(1, 5, '2025-01-01 14:00:00'),
(2, 4, '2025-01-02 16:00:00'),
(3, 3, '2025-01-03 17:00:00'),
(4, 2, '2025-01-04 18:00:00'),
(5, 1, '2025-01-05 19:00:00');

-- پر کردن جدول Movie_List
INSERT INTO Movie_List (movie_id, list_id, date_added) VALUES
(1, 4, '2025-01-06 20:00:00'),
(2, 1, '2025-01-07 21:00:00'),
(3, 5, '2025-01-08 22:00:00'),
(4, 2, '2025-01-09 23:00:00'),
(5, 3, '2025-01-10 12:00:00');

-- پر کردن جدول Movie_Company
INSERT INTO Movie_Company (movie_id, company_id) VALUES
(1, 3),
(2, 5),
(3, 1),
(4, 4),
(5, 2);

-- پر کردن جدول Movie_Person
INSERT INTO Movie_Person (movie_id, person_id, role) VALUES
(1, 1, 'Actor'),
(2, 5, 'Actor'),
(3, 3, 'Actor'),
(4, 4, 'Actor'),
(5, 2, 'Director');

-- پر کردن جدول Movie_Rating
INSERT INTO Movie_Rating (movie_id, rating_id) VALUES
(1, 5),
(2, 4),
(3, 3),
(4, 2),
(5, 1);
