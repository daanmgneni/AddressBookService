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
								('Shivam','Tripathi','Area -8/11','Bhopal','MP','370006','903456323','shivam@gmail.com')

UPDATE address_book /* Edit Contact */
SET address = '456 New Lucknow', zip = '67890', phone_number = '5555678', email = 'divya612@gmail.com'
WHERE first_name = 'Divya' AND last_name = 'Mishra';
