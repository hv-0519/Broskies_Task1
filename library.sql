CREATE TABLE `Publishers` (
  `PublisherID` int PRIMARY KEY AUTO_INCREMENT,
  `PublisherName` varchar(255) NOT NULL
);

CREATE TABLE `Books` (
  `BookID` int PRIMARY KEY AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `PublisherID` int,
  `YearPublished` int
);

CREATE TABLE `Authors` (
  `AuthorID` int PRIMARY KEY AUTO_INCREMENT,
  `AuthorName` varchar(255) NOT NULL
);

CREATE TABLE `BooksAuthors` (
  `BookID` int,
  `AuthorID` int,
  PRIMARY KEY (`BookID`, `AuthorID`)
);

CREATE TABLE `Members` (
  `MemberID` int PRIMARY KEY AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Address` text,
  `PhoneNumber` varchar(20)
);

CREATE TABLE `BookLoans` (
  `LoanID` int PRIMARY KEY AUTO_INCREMENT,
  `BookID` int,
  `MemberID` int,
  `LoanDate` date NOT NULL,
  `ReturnDate` date
);

ALTER TABLE `Books` ADD FOREIGN KEY (`PublisherID`) REFERENCES `Publishers` (`PublisherID`);

ALTER TABLE `BooksAuthors` ADD FOREIGN KEY (`BookID`) REFERENCES `Books` (`BookID`);

ALTER TABLE `BooksAuthors` ADD FOREIGN KEY (`AuthorID`) REFERENCES `Authors` (`AuthorID`);

ALTER TABLE `BookLoans` ADD FOREIGN KEY (`BookID`) REFERENCES `Books` (`BookID`);

ALTER TABLE `BookLoans` ADD FOREIGN KEY (`MemberID`) REFERENCES `Members` (`MemberID`);
