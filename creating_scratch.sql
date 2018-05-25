PRAGMA foreign_keys = ON;

CREATE TABLE Account(
    AccountID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,

    Password VARCHAR  NOT NULL,
    Login VARCHAR  NOT NULL
);

CREATE TABLE Idea(
    IdeaID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR NOT NULL,
    Description VARCHAR,
    DataTime VARCHAR NOT NULL,

    Account INTEGER NOT NULL,
    FOREIGN KEY(Account) REFERENCES Account(AccountID)
);


CREATE TABLE Category(
    CategoryID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR NOT NULL,
    ImageName VARCHAR DEFAULT "default_image.png"
);


CREATE TABLE Place(
    PlaceID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR NOT NULL,
    Description VARCHAR,

    Geolocation VARCHAR
);

CREATE TABLE TaskList (
    ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,

    Name VARCHAR NOT NULL,
    Description VARCHAR
);

CREATE TABLE Task(
    TaskID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    ListID INTEGER,
    Name VARCHAR NOT NULL,
    Description VARCHAR,
    State VARCHAR NOT NULL,

    PinnedCategory  INTEGER,
    Account INTEGER NOT NULL ,
    FOREIGN KEY(PinnedCategory) REFERENCES Category(CategoryID),
    FOREIGN KEY(Account) REFERENCES Account(AccountID));


CREATE TABLE Tracking(
    TrackingID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR,

    Category INTEGER,
    BeginingTime VARCHAR NOT NULL,
    EndTime VARCHAR NOT NULL,
    --PinnedTaskID INTEGER,
    Place INTEGER,
    Account INTEGER,
    Event INTEGER,

    FOREIGN KEY(Event) REFERENCES Event(EventID),
    FOREIGN KEY(Category) REFERENCES Category(CategoryID),
    FOREIGN KEY(Place) REFERENCES Place(PlaceID),
    FOREIGN KEY(Account) REFERENCES Account(AccountID));


CREATE TABLE Event(
    EventID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    BeginingTime VARCHAR NOT NULL,
    EndingTime VARCHAR NOT NULL,
    Name VARCHAR,

    Place INTEGER,
    --Tracking INTEGER,
    PinnedTask INTEGER,
    Account INTEGER NOT NULL ,
    FOREIGN KEY(Place) REFERENCES Place(PlaceID),
    --FOREIGN KEY(Tracking) REFERENCES Tracking(TrackingID),
    FOREIGN KEY(PinnedTask) REFERENCES Task(TaskID),
    FOREIGN KEY(Account) REFERENCES Account(AccountID));


CREATE TABLE Question(
    QuestionID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Question VARCHAR NOT NULL
  );

CREATE TABLE QuestionAnswer(
    QuestionID INTEGER NOT NULL,
    AnswerID INTEGER NOT NULL,
    Answer VARCHAR NOT NULL,

    primary key (QuestionID, AnswerID)
);

-- CREATE TABLE LastUsing(
--     LastUsingID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
--     Account INTEGER,
--     Question INTEGER,
--     LastUsingDateTime VARCHAR,
--
--     FOREIGN KEY(Question) REFERENCES Question(QuestionID),
--     FOREIGN KEY(Account) REFERENCES Account(Accountid));

CREATE TABLE UserAnswer(
    UserAnswerID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,

    Question INTEGER,
    Account INTEGER,
    UserAnswer VARCHAR NOT NULL,
    DataTime VARCHAR NOT NULL,
    FOREIGN KEY(Account) REFERENCES Account(AccountID),
    FOREIGN KEY(Question) REFERENCES Question(QuestionID));

CREATE TABLE Service(
    ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,

    Name VARCHAR NOT NULL,
    Cost INTEGER
);

CREATE TABLE Subscription(
    SubscriptionID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    ServiceUserID INTEGER  NOT NULL,
    Service VARCHAR  NOT NULL,
    SubscriptionType VARCHAR  NOT NULL,
    Account INTEGER  NOT NULL,

    FOREIGN KEY(Account) REFERENCES Account(AccountID),
    FOREIGN KEY(Service) REFERENCES Service(ID)
);


CREATE TABLE Preference(
    PreferenceID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,

    Category INTEGER,
    TimeInTheMorning INTEGER,
    TimesInTheAfternoon INTEGER,
    TimesInTheEvening INTEGER,
    TimesInTheNight INTEGER,
    AverageDuration INTEGER,
    FOREIGN KEY(Category) REFERENCES Category(CategoryID));

CREATE TABLE Message(
    MessageID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    UserID INTEGER NOT NULL,
    DateTime VARCHAR NOT NULL,
    Text VARCHAR,

    Service INTEGER NOT NULL);
