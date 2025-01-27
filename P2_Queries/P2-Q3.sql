-- Insert a movie with a typo in the title
INSERT INTO Production (title, genre, revenue, release_date, [type], imdb_rating)
VALUES ('The Niht We Met', 'Action', 2798000000, '2019-04-26', 'Movie', 8.4);

go

-- Correct the typo in the title
UPDATE Production
SET title = 'The Night We Met'
WHERE title = 'The Niht We Met';

go

-- Delete the movie from the Production table
DELETE FROM Production
WHERE title = 'The Night We Met';

go