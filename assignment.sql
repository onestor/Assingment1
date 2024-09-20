    -- Assingment   
CREATE TABLE Lewandowski (
    Goals VARCHAR(20),
    Assists VARCHAR(100)
);

select *
from lewandowski

CREATE TABLE Suarez (
    Goals VARCHAR(20),
    Assists VARCHAR(100)
);

select *
from Suarez

CREATE TABLE Ronaldo (
    Goals VARCHAR(20),
    Assists VARCHAR(100)
);

select *
from Ronaldo

CREATE TABLE FootballerData (
	name VARCHAR(20),
    email VARCHAR(20),
    number VARCHAR(100)
);

select *
from FootballerData

CREATE TABLE Transfer (
	name VARCHAR(20),
    club VARCHAR(20),
    price int
);

select *
from Transfer

INSERT INTO Lewandowski (Goals, Assists) VALUES
(30, 10);

INSERT INTO Suarez (Goals, Assists) VALUES
(20, 15);

INSERT INTO Ronaldo (Goals, Assists) VALUES
(60, 20);

INSERT INTO FootballerData (name, email, number) VALUES
('Lewandowski', 'lewa228', '333-555'),
('Suarez', 'suarezbem', '222-222'),
('Ronaldo', 'goat', '777-777');

INSERT INTO Transfer (name, club, price) VALUES
('Lewandowski', 'Bayern', 100000000),
('Suarez', 'Barca', 75000000),
('Ronaldo', 'Real', 300000000);


WITH PlayerStats AS (
    SELECT 'Lewandowski' AS Name, Goals, Assists
    FROM Lewandowski
    union
    SELECT 'Suarez', Goals, Assists
    FROM Suarez
    union
    SELECT 'Ronaldo', Goals, Assists
    FROM Ronaldo
)
SELECT 
    p.Name, 
    p.Goals, 
    p.Assists, 
    t.club AS Club, 
    t.price AS Price, 
    f.number AS PhoneNumber, 
    f.email AS Email
FROM PlayerStats p
JOIN Transfer t ON p.Name = t.name
JOIN FootballerData f ON p.Name = f.name
ORDER BY t.price DESC;	













    

