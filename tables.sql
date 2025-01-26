-- User Relation
CREATE TABLE [User] (
    [user_id] INT NOT NULL IDENTITY(1,1),
    username VARCHAR(25) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    [password] VARCHAR(50) NOT NULL,
    full_name VARCHAR(50),
    age INT NOT NULL CHECK (age > 0),
    PRIMARY KEY ([user_id])
);

-- Movie / Series Relation
CREATE TABLE Production (
    production_id INT IDENTITY(1,1),
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(20) NOT NULL,
    revenue BIGINT,
    release_date DATE NOT NULL,
    [type] VARCHAR(6) NOT NULL CHECK ([type] IN ('Movie', 'Series')),
    imdb_rating NUMERIC(3, 1) CHECK (imdb_rating BETWEEN 0 AND 10),
    PRIMARY KEY (production_id)
);

-- Rating Relation
CREATE TABLE Rating (
    rating_id INT NOT NULL IDENTITY(1,1),
	[user_id] INT NOT NULL,
	production_id INT NOT NULL,
	date_created DATETIME NOT NULL, 
    rating_value Numeric(3, 1) NOT NULL CHECK (rating_value BETWEEN 0 AND 10),
    review_text VARCHAR(100),
    PRIMARY KEY (rating_id),
	FOREIGN KEY ([user_id]) REFERENCES [User]([user_id]),
	FOREIGN KEY (production_id) REFERENCES Production(production_id)
);

-- Lists Relation
CREATE TABLE List (
    list_id INT NOT NULL IDENTITY(1,1),
	[user_id] INT NOT NULL,
    list_name VARCHAR(50) NOT NULL,
    access VARCHAR(7) NOT NULL CHECK (access in ('private', 'public')),
    [type] VARCHAR(8) NOT NULL CHECK ([type] in ('download', 'viewed', 'watch')),
    PRIMARY KEY (list_id),
	FOREIGN KEY ([user_id]) REFERENCES [User]([user_id]) ON DELETE CASCADE
);

-- People Relation
CREATE TABLE People (
    person_id INT NOT NULL IDENTITY(1,1),
    full_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (person_id)
);

-- Companies Relation
CREATE TABLE Company (
    company_id INT NOT NULL IDENTITY(1,1),
    legal_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (company_id)
);

-- Weak Entity Part related to Production
CREATE TABLE Part (
    production_id INT NOT NULL,
    part_number INT NOT NULL,
    PRIMARY KEY (production_id, part_number),
    FOREIGN KEY (production_id) REFERENCES Production(production_id) ON DELETE CASCADE
);

go

-- A Season or Movie / Series added to a List
CREATE TABLE Added_To_List (
    production_id INT NOT NULL,
    part_number INT NOT NULL,
    list_id INT NOT NULL,
    date_added DATETIME NOT NULL, -- DEFAULT CURRENT_TIMESTAMP
    PRIMARY KEY (production_id, part_number, list_id),
    FOREIGN KEY (production_id, part_number) REFERENCES Part(production_id, part_number) ON DELETE CASCADE,
    FOREIGN KEY (list_id) REFERENCES List(list_id) ON DELETE CASCADE
);

-- which Movie / Series is produced by what company
CREATE TABLE Produced_By (
    production_id INT NOT NULL,
    company_id INT NOT NULL,
    PRIMARY KEY (production_id, company_id),
    FOREIGN KEY (production_id) REFERENCES Production(production_id) ON DELETE CASCADE,
    FOREIGN KEY (company_id) REFERENCES Company(company_id) ON DELETE CASCADE
);

-- which Person is participiated in which Movie / Series
CREATE TABLE Cast_Crew (
    production_id INT NOT NULL,
    person_id INT NOT NULL,
    [role] VARCHAR(8) NOT NULL	CHECK ([role] IN ('director', 'actor')),
    PRIMARY KEY (production_id, person_id),
    FOREIGN KEY (production_id) REFERENCES Production(production_id) ON DELETE CASCADE,
    FOREIGN KEY (person_id) REFERENCES People(person_id) ON DELETE CASCADE
);

go