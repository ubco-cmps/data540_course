(page_Course_Schedule)=
Course Schedule
=======================

| Class # | Date                        | Course Topics                                                                   |
|---------|-----------------------------|---------------------------------------------------------------------------------|
| 1       | Tuesday October 12          | Relational Databases                                                            |
| 2       | Thursday October 14         | SQL DDL: CREATE, INSERT, DELETE, UPDATE (Lecture 2)                             |
| 3       | Tuesday October 19          | SQL: select, project, join, ORDER BY                                            |
| 4       | Thursday October 21         | SQL: GROUP BY, aggregate functions, subqueries, outer joins                     |
| Q       | Tuesday October 26          | Quiz 1                                                                          |
| 5       | Thursday October 28         | Programming with Databases in R and Python                                      |
| 6       | Tuesday November 2          | ER/UML Diagrams with Relational Mapping                                         |
| 7       | Thursday November 4         | XML, JSON, and NoSQL                                                            |
| Q       | Tuesday November 9          | Quiz 2                                                                          |
| -       | <s>Thursday November 11</s> | <s>Advanced SQL: Views, Security, Transactions</s>  (Not Tested, Extra Content) |

## Important Due Dates

| Assignment | Date Due                 |
|------------|--------------------------|
| Lab 1      | Monday October 18 18:00  |
| Lab 2      | Monday October 25 18:00  |
| Quiz 1     | Tuesday October 26       |
| Lab 3      | Monday November 1 18:00  |
| Lab 4      | Monday November 8  18:00 |
| Quiz 2     | Thursday November 9      |

```{note}
Data 540 Labs are **in-person** on Mondays from 1:30 - 3:30 PM.
```

```{tip}
All lab deadlines have a 48-hour no-penalty grace period.
```

## Lecture Learning Objectives

1. Relational Database Introduction

	- define database, DBMS, schema, metadata
	- define program-data independence/data abstraction and explain how it is achieved by databases but not by file systems
	- Use relational model terminology: relation, attribute, tuple, domain, degree, cardinality
	- define and compare/contrast: DDL and DML
	- list the properties of relations
	- define superkey, key, candidate key, primary key, foreign key
	- define integrity, constraints, domain constraint, entity integrity constraint, referential integrity constraint
	- given a relation be able to: identify its cardinality, degree, domains, keys, and superkeys and determine if constraints are being violated
	- define: relational algebra, query language
  
2. SQL DDL: CREATE, INSERT, DELETE, UPDATE

	- recognize valid and invalid identifiers
	- explain the key types of constraints and how to enforce them: required (not null) data, domain constraints, entity integrity, referential integrity
	- write a CREATE TABLE statement given a high-level description
	- list what ALTER TABLE can and cannot do 
	- remove a table using DROP TABLE
	- create an index on fields of a table
	- explain how an index helps improve query time
	- write INSERT, DELETE, and UPDATE commands
      
3. SQL: select, project, join, ORDER BY

	- translate English questions into SQL queries that may require:
		- SELECT-FROM-WHERE syntax for selection, projection, and join
		- renaming and aliasing including queries with multiple copies of the same relation
		- ORDER BY
		- LIMIT/OFFSET
		- DISTINCT to eliminate duplicates
		- UNION, EXCEPT, INTERSECT set operations
		- IS NULL or IS NOT NULL
		- LIKE string pattern matching
	- read SQL queries to determine their output and English meaning

4. SQL: GROUP BY, aggregate functions, subqueries, outer joins

	- write SQL queries containing aggregate functions and calculated fields
	- write SQL queries requiring nested subqueries and the use of the appropriate operators such as comparison operators for single value subqueries, IN, NOT IN, ANY, ALL for table result subqueries, and EXISTS and NOT EXISTS for multiple result subqueries which may or may not contain results
	- lookup documentation on SQL functions supported by a particular database and use them as required in queries
	- explain the purpose of OUTER and NATURAL joins and use them for queries

5. Programming with Databases in R and Python

	- explain the common steps in querying a database using a programming language
	- draw and explain the database-program architecture and the key components
	- write a simple program to query a database in both Python and R
	- use a variety of databases including MySQL, Microsoft SQL Server, and SQLite
	- explain the purpose of ODBC
	- list the components of a database connection URL
	- use dplyr to query a database
	- be able to debug and resolve database connection and usage issues in Python and R code

6. ER/UML Diagrams with Relational Mapping

	- describe the three steps in database design including the results of each step
	- describe differences between conceptual, logical, and physical data models
	- define entity, relationship, and attribute
	- identify on an ER diagram: entity type, relationship type, degree of a relationship, recursive relationship, attribute, multi-valued attribute, derived attribute
	- identify on an ER diagram: primary key, partial primary key
	- identify on an ER diagram: cardinality and participation constraints
	- given an ER diagram, translate to the relational model with sufficient detail to be able to write queries using only an ER diagram in UML syntax

7. XML, JSON, and NoSQL

	- list some advantages of XML
	- given an XML document, determine if it is well-formed
	- given an XML document and a DTD or XML Schema, determine if it is valid
	- know the symbols (?, \*, +) for cardinality constraints in DTDs
	- compare and contrast ID/IDREFs in DTDs with keys and foreign keys in the relational model
	- list some advantages that XML Schema has over DTDs
	- explain why and when namespaces are used
	- given an XML document and query description, write an XPath query to retrieve the appropriate node sequence to answer the query
	- given an XML document and an XPath expression, list the result of evaluating the expression
	- understand the basic constructs used to encode JSON data
	- compare JSON representation versus relational model
	- understand alternative models for representing data besides the relational model
	- list some NoSQL databases and reason about their benefits and issues compared to the relational model for certain problems
	- explain at a high-level how MapReduce works      

8. Advanced SQL: Views, Security, Transactions (Not Tested, Extra Content)

	- define views using CREATE VIEW from a high-level description
	- list advantages and disadvantages of views
	- use GRANT/REVOKE syntax
	- list the types of privileges and know when to use them
	- given a SQL command, explain what privileges are required for it to execute
	- explain how views are useful for security
	- define: transaction
	- list ACID properties
	- be aware of WITH RECURSIVE for recursive SQL queries