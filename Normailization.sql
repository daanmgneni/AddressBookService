CREATE TABLE Address_Book  /* create 2nd table for normalization */
(
    id INT PRIMARY KEY IDENTITY,
    name VARCHAR(50) NOT NULL,
    type VARCHAR(50) NOT NULL
)

CREATE TABLE Contact  /* create 1 table */
 (
    id INT PRIMARY KEY IDENTITY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    zip VARCHAR(20) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    address_book_id INT NOT NULL,
    FOREIGN KEY (address_book_id) REFERENCES Address_Book(id)
)



select * from Address_book
select * from Contact

INSERT INTO Address_Book (name, type)
VALUES ('Family Address Book', 'Family'), 
       ('Friends Address Book', 'Friends')


INSERT INTO Contact VALUES('Aakanksha','Pandey','Sector-7','Bhilai','CG','490006','908765323','aakan@gmail.com', 1),
								('Divya','Mishra','Block2','Lucknow','UP','490566','90845723','divya@gmail.com',2),
								('Shivam','Tripathi','Area -8/11','Bhopal','MP','370006','903456323','shivam@gmail.com', 2),
								('Ritu','Pandey','Sector-2','Bhilai','CG','456786','90456723','ritu@gmail.com',1)


/* UC 6 - Search by City and State */
SELECT c.first_name, c.last_name, c.address, c.city, c.state, c.zip, c.phone_number, c.email, ab.name, ab.type
FROM Contact c
INNER JOIN Address_Book ab ON c.address_book_id = ab.id
WHERE c.city = 'Bhilai'


SELECT c.first_name, c.last_name, c.address, c.city, c.state, c.zip, c.phone_number, c.email, ab.name, ab.type
FROM Contact c
INNER JOIN Address_Book ab ON c.address_book_id = ab.id
WHERE c.state = 'MP'

/*UC 7 - Size of contact by city or state */
SELECT c.city, COUNT(*) as cityCount,c.state, COUNT(*) as StateCount
FROM Contact c
GROUP BY c.city, c.state

/*UC 8 - sorted alphabeticaly for given city*/
SELECT c.first_name, c.last_name, c.address, c.city, c.state, c.zip, c.phone_number, c.email, ab.name, ab.type
FROM Contact c INNER JOIN Address_Book ab
ON c.address_book_id = ab.id
WHERE c.city = 'Bhilai'
ORDER BY  c.first_name ASC


/*uc10 - no.contact persons by type */
SELECT ab.type ,COUNT(*) as count 
FROM Contact c INNER JOIN Address_Book ab
ON c.address_book_id = ab.id
GROUP BY ab.type


/* ALL UC WORK PERFECTLY WITH NEW TABLE STRUCTURE */
