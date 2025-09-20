CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    Username NVARCHAR(80) UNIQUE NOT NULL,
    Email NVARCHAR(120) UNIQUE NOT NULL,
    Location NVARCHAR(120),
    Interests NVARCHAR(MAX),
    PasswordHash NVARCHAR(128) NOT NULL
);

CREATE TABLE Opportunities (
    OpportunityID INT PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(200) NOT NULL,
    Description NVARCHAR(MAX) NOT NULL,
    Type NVARCHAR(50),
    Location NVARCHAR(120),
    SkillsRequired NVARCHAR(MAX),
    Link NVARCHAR(500)
);

CREATE TABLE UserProgress (
    ProgressID INT PRIMARY KEY IDENTITY(1,1),
    UserID INT NOT NULL,
    TutorialName NVARCHAR(200) NOT NULL,
    ProgressPercentage INT DEFAULT 0,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Sample Data Insertion
INSERT INTO Users (Username, Email, Location, Interests, PasswordHash) VALUES
(
    'john_doe',
    'john.doe@example.com',
    'Cape Town',
    'Machine Learning, Data Science',
    'hashed_password_1'
),
(
    'jane_smith',
    'jane.smith@example.com',
    'Johannesburg',
    'AI Ethics, Natural Language Processing',
    'hashed_password_2'
);

INSERT INTO Opportunities (Title, Description, Type, Location, SkillsRequired, Link) VALUES
(
    'AI for Agriculture Workshop',
    'A workshop on applying AI in agricultural practices.',
    'course',
    'Pretoria',
    'Basic AI, Python',
    'http://example.com/agri-ai'
),
(
    'Junior AI Developer Position',
    'Entry-level position for an AI developer.',
    'job',
    'Durban',
    'Python, TensorFlow, Keras',
    'http://example.com/ai-dev-job'
);

INSERT INTO UserProgress (UserID, TutorialName, ProgressPercentage) VALUES
(1, 'Introduction to AI', 50),
(2, 'AI in Healthcare', 75);


