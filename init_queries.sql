-- User Relation
CREATE TABLE [User] (
    [user_id] INT NOT NULL IDENTITY(1,1),
    username VARCHAR(25) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    [password] VARCHAR(50) NOT NULL,
    full_name VARCHAR(50),
    age INT,
	PRIMARY KEY ([user_id])
);

-- Movie / Series Relation
CREATE TABLE Movie_Series (
    production_id INT IDENTITY(1,1),
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(20) NOT NULL,
    revenue INT NOT NULL,
    release_date DATE NOT NULL,
    imdb_rating NUMERIC(3, 1) CHECK (imdb_rating BETWEEN 0 AND 10),
	PRIMARY KEY (production_id)
);

-- Rating Relation
CREATE TABLE Rating (
    rating_id INT NOT NULL IDENTITY(1,1),
    rating_value DECIMAL(3, 1) NOT NULL CHECK (rating_value BETWEEN 0 AND 10),
    REVIEW_text VARCHAR(1000),
	PRIMARY KEY (rating_id)
);

-- Lists Relation
CREATE TABLE Lists (
    list_id INT NOT NULL IDENTITY(1,1),
    list_name VARCHAR(50) NOT NULL,
    access VARCHAR(7) NOT NULL CHECK(access in ('private', 'public')),
    [type] VARCHAR(8) NOT NULL CHECK([type] in ('download', 'viewed', 'watch')),
	PRIMARY KEY (list_id)
);

-- People Relation
CREATE TABLE People (
    person_id INT NOT NULL IDENTITY(1,1),
    full_name VARCHAR(100) NOT NULL,
	PRIMARY KEY (person_id)
);


-- Companies Relation
CREATE TABLE Company (
    company_id INT NOT NULL IDENTITY(1,1),
    legal_name VARCHAR(50) NOT NULL,
	PRIMARY KEY (company_id)
);
go

-- The relation for Ratings created by the Users
CREATE TABLE User_Created_Rating (
    [user_id] INT NOT NULL,
    rating_id INT NOT NULL,
    date_created DATETIME NOT NULL, -- DEFAULT CURRENT_TIMESTAMP
    PRIMARY KEY ([user_id], rating_id),
    FOREIGN KEY ([user_id]) REFERENCES [User]([user_id]) ON DELETE CASCADE,
    FOREIGN KEY (rating_id) REFERENCES Rating(rating_id) ON DELETE CASCADE
);

-- The relation between User and Lists
CREATE TABLE User_List (
    [user_id] INT NOT NULL,
    list_id INT NOT NULL,
	PRIMARY KEY ([user_id], list_id),
    FOREIGN KEY ([user_id]) REFERENCES [User]([user_id]),
    FOREIGN KEY (list_id) REFERENCES Lists(list_id),

);

-- جدول ارتباط Movie و List
CREATE TABLE Movie_List (
    production_id INT NOT NULL,
    list_id INT NOT NULL,
    date_added DATETIME NOT NULL, -- DEFAULT CURRENT_TIMESTAMP
    PRIMARY KEY (production_id, list_id),
    FOREIGN KEY (production_id) REFERENCES Movie_Series(production_id) ON DELETE CASCADE,
    FOREIGN KEY (list_id) REFERENCES Lists(list_id) ON DELETE CASCADE
);

-- جدول ارتباط Movie و Company
CREATE TABLE Movie_Company (
    movie_id INT NOT NULL,
    company_id INT NOT NULL,
    PRIMARY KEY (movie_id, company_id),
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id) ON DELETE CASCADE,
    FOREIGN KEY (company_id) REFERENCES Company(company_id) ON DELETE CASCADE
);

-- جدول ارتباط Movie و Person
CREATE TABLE Movie_Person (
    movie_id INT NOT NULL,
    person_id INT NOT NULL,
    role VARCHAR(50) NOT NULL,
    PRIMARY KEY (movie_id, person_id),
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id) ON DELETE CASCADE,
    FOREIGN KEY (person_id) REFERENCES Person(person_id) ON DELETE CASCADE
);

-- جدول ارتباط Movie و Rating
CREATE TABLE Movie_Rating (
    movie_id INT NOT NULL,
    rating_id INT NOT NULL,
    PRIMARY KEY (movie_id, rating_id),
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id) ON DELETE CASCADE,
    FOREIGN KEY (rating_id) REFERENCES Rating(rating_id) ON DELETE CASCADE
);
