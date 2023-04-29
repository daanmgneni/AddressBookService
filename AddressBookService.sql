/*!!!! WELCOME TO ADDRESS BOOK SERVICE !!!! */

  CREATE TABLE address_book /* create table */
  (
  id INT PRIMARY KEY IDENTITY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  address VARCHAR(100) NOT NULL,
  city VARCHAR(50) NOT NULL,
  state VARCHAR(50) NOT NULL,
  zip VARCHAR(20) NOT NULL,
  phone_number VARCHAR(20) NOT NULL,
  email VARCHAR(100) NOT NULL
)

SELECT * FROM address_book /* retrive data */

/* insert values */
INSERT INTO address_book VALUES('Aakanksha','Pandey','Sector-7','Bhilai','CG','490006','908765323','aakan@gmail.com'),
								('Divya','Mishra','Block2','Lucknow','UP','490566','90845723','divya@gmail.com'),
								('Shivam','Tripathi','Area -8/11','Bhopal','MP','370006','903456323','shivam@gmail.com'),
								('Ritu','Pandey','Sector-2','Bhilai','CG','456786','90456723','ritu@gmail.com')

UPDATE address_book /* Edit Contact */
SET address = '456 New Lucknow', zip = '67890', phone_number = '5555678', email = 'divya612@gmail.com'
WHERE first_name = 'Divya' AND last_name = 'Mishra';

DELETE FROM address_book WHERE first_name = 'ritu' /* delete particular row by name */

INSERT INTO address_book VALUES('Ritu','Pandey','Sector-2','Bhilai','CG','456786','90456723','ritu@gmail.com') /* again insert one more value */

SELECT * FROM address_book WHERE city = 'Bhilai' /* search by city */
SELECT * FROM address_book WHERE state = 'MP'/* search by state */
SELECT DISTINCT city FROM address_book /* distinct values */
SELECT DISTINCT state FROM address_book


SELECT city, COUNT(*) FROM address_book GROUP BY city /* by group by count city */ 
SELECT state, COUNT(*) as count FROM address_book GROUP BY state /* by group by count state or by as we give name to column */ 

SELECT * FROM address_book WHERE city = 'Bhilai' ORDER BY first_name ASC/* with order by sort person name for given city */

ALTER TABLE address_book /* add 2 new column name and type*/
ADD name VARCHAR(50),
    type VARCHAR(50) 

UPDATE address_book SET name='Family Address Book', type = 'Family' WHERE id = 1
UPDATE address_book SET name='Friends Address Book', type = 'Friends' WHERE id = 2
UPDATE address_book SET name='Friends Address Book', type = 'Friends' WHERE id = 3
UPDATE address_book SET name='Professional Address Book', type = 'Professional' WHERE id = 5

SELECT * FROM address_book /* retrive data */

SELECT type, COUNT(*) AS count FROM address_book GROUP BY type  /* count person by type */
