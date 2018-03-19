# SQL or Sequel?

PostgreSQL Say it however you want

* Structured Query Language
* It's englishy
* most prevelant database coding **language** 
* relational databases
  - Schema" kind of like a class, or struct where you define the types and properties
  - Table where each column has a type and a name and each row is the data.
  - Related group of spreadsheets, kind of like that.
* SQL has an incredibly powerful querying language.
* SQL was invented in the 70s
* SQLite was released in 2000

### CRUD

* Create, read, update, delete
* Create: INSERT, read: SELECT, update: UPDATE, delete: DELETE

#### SELECT

SELECT
FROM (JOIN)
WHERE
ORDER BY

"All the best words, it's a real Trumpian language"

## SQLite3

* A smallish database that we can put on an embedded device. 
* MySQL, Microsoft SQL Server, PostgreSQL are all designed to be exist in the cloud as a centralized server for a single app. Designed for large data and many reads and writes.
* SQLite can do all of that stuff, but it is part of your app and stores data in a _single database file_. Local to the application. 

* Why as iOS devs do we use SQLite? 
  - You will now have skills to at least communicate with web devs using SQL, maybe you can also setup other SQL databases. 
  - Realm exists to solve the problems in SQLite. 
  - SQLite: most if not all.

## ERD

* African wildlife.

* Entity Relationship Diagram.
* How we model the data **before** writing any SQL.
* Tables contain multiple things so we name them in plural.

## Types

Every column has a type. SQL is kind of like Swift when it comes to types. SQLite is different, it's more like JavaScript. Dynamic. 


* Why even use types?
  - Easier to read as a human. I as a human can easily see the type that is _supposed_ to go into a column.
  - Hopefully keep you from bad logic.
  - It makes you SQLite code more compatible with other version of SQL.
  - Weird unexpected behavior when putting different types of data into a column with a specific type. 

* What would we store a phone number as?
  "075745" 75745
  - Store phone number as a string so that we retain the leading 0s

* How would we store money?
  - Don't ever ever ever never store as a double.
  - INTEGER store it as cents
  - TEXT 

* How do we store a date?
  - DATE in SQL versions that support it.
  - SQLite doesn't
  - INTEGER UTC seconds since 1970 jan 1st. timestamp
  - TEXT YYYY-MM-DD '1970' '1970-01' 


## Relationships

* One-to-many the only relationship that you will model in SQL.
* if you need a many-to-many create a "join" table.
* One table will have a foreign key that refers to another table's primary key.
* The foreign key will be in the "has many" side.
* The crow's foot **always** goes on the fk side. 