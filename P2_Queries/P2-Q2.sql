-- User Table
-- Inserting a duplicate username
INSERT INTO [User]	(username,		email,				[password],		full_name,	age)
VALUES				('john_doe',	'john@example.com',	'password123',	'John Doe', 25);
INSERT INTO [User]	(username, email, [password], full_name, age)
VALUES				('john_doe', 'john2@example.com', 'password456', 'John Doe', 30);
-- Inserting an invalid age
INSERT INTO [User]	(username,		email,				[password],		full_name,	age)
VALUES				('jane_doe',	'jane@example.com', 'password789',	'Jane Doe', -5);

-- Production Table
-- Inserting an invalid type
INSERT INTO Production	(title,				genre,		revenue,	release_date,	[type],		imdb_rating)
VALUES					('Invalid Type',	'Action',	1000000,	'2023-01-01',	'Invalid',	8.5);
-- Inserting an invalid imdb_rating
INSERT INTO Production  (title,				genre,		revenue,	release_date,	[type],		imdb_rating)
VALUES					('Invalid Rating',  'Comedy',	500000,		'2023-02-01',	'Movie',	11.0);

-- Rating Table
-- Inserting an invalid rating_value
INSERT INTO Rating	([user_id], production_id,	date_created,	rating_value,	review_text)
VALUES				(1,			1,				GETDATE(),		11.5,			'This rating is invalid.');
-- Inserting a non-existent user_id
INSERT INTO Rating	([user_id], production_id,	date_created,	rating_value,	review_text)
VALUES				(56798,		1,				GETDATE(),		8.5,			'Invalid user reference.');

-- List Table
-- Inserting an invalid access value
INSERT INTO List	([user_id],		list_name,	access,				[type])
VALUES				(1,				'My List',	'invalid_access',	'watch');
-- Inserting an invalid type value
INSERT INTO List	([user_id],		list_name,	access,		[type])
VALUES				(1,				'My List',	'private',	'invalid_type');

-- People Table
-- Inserting a NULL full_name
INSERT INTO People (full_name) VALUES (NULL);

-- Company Table
-- Inserting a NULL legal_name
INSERT INTO Company (legal_name) VALUES (NULL);

-- Part Table
-- Inserting a non-existent production_id
INSERT INTO Part	(production_id,		part_number)
VALUES				(876900,			1);

-- Added_To_List Table
-- Inserting a non-existent list_id
INSERT INTO Added_To_List	(production_id,		part_number,	list_id,	date_added)
VALUES						(1,					1,				56789,		GETDATE());

-- Produced_By Table
-- Inserting a non-existent company_id
INSERT INTO Produced_By (production_id,		company_id)
VALUES					(1,					6789);

-- Cast_Crew Table
-- Inserting an invalid role
INSERT INTO Cast_Crew	(production_id,		person_id,	[role])
VALUES					(1,					1,			'invalid_role');
