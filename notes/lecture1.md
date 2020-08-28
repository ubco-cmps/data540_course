# Lecture 01

## Introductions

### The Essence of the Course
The overall goal of this course is for you to:  
**Understand how to create, query, and program with databases to perform data analysis with larger data sets.**

This course covers database techniques and software including relational and NoSQL databases, XML, and JSON.  

Data analysts must have fluency in SQL and other query languages to extract and analyze data from a variety of systems.  


### My Course Goals
- Provide the information in a simple, concise, and effective way for learning.
- Strive for ***all*** students to understand the material and excel at the course.
- Be available for questions during class time, office hours, and at other times as needed.
- Teach students how to be a sophisticated database user (by being fluent in SQL), write programs that access a database, and be able to read and understand database design (ER) diagrams.


### Course Objectives
- Understand the use case for databases and the relational model for data storage.
- Fluency in SQL including SQL DDL (CREATE, DROP, INSERT, UPDATE, DELETE) and SQL queries using SELECT.
- Construct programs that access a database to read data, perform analysis, and output results.
- Exposure to database technologies like NoSQL, JSON, and XML.
- Understand how to read database design (ER) diagrams and convert to the relational model.

### Academic Dishonesty
Cheating is strictly prohibited and is taken very seriously by UBC.  
A guideline to what constitutes cheating:
- Labs
  - Submitting code produced by others.
  - Working in groups to solve questions and/or comparing answers to questions once they have been solved (except for group assignments).
  - Discussing HOW to solve a particular question instead of WHAT the question involves.
- Exams
  - Only materials permitted by instructor should be in the exam.
  
Academic dishonesty may result in a "F" for the course and removal from the MDS program.


### How to Excel in This Course
Attend ***every*** class:
- **Read notes *before* class as preparation and try the questions.**
- **Participate in class exercises and questions.**

Attend and complete all labs:
- **Labs practice the fundamental employable skills as well as being for marks.**

Practice on your own. Practice makes perfect.
- **Do more questions than in the labs.**
- **Read the additional reference material and perform practice questions.**


### Systems and Tools
Course material is on GitHub.   
Marks are distributed on Canvas.  
Your laptop will be used to install all software and run programs.  


### The Lab Assignments
Weekly lab assignments are worth **30%** of your overall grade.

Lab assignments may take more than the two hours lab time.

You have until the week after the lab to complete it.
- **No late labs will be accepted.**
- **A lab may be handed in any time before the due date and may be marked immediately by the TA in the lab.**

Lab assignments are done individually.

The lab assignments are critical to learning the material and are designed both to prepare you for the quizzes and build up your skills!


### The In-Class Clicker Quizzes
To promote understanding, 10% of your overall grade is allocated to answering in-class questions.

These questions are answered electronically using a clicker.
- **The clicker can be purchased at the bookstore.**
- **The clicker is personalized to you with your student number.**
- **At different times during all the lectures, questions reviewing material will be asked. Reponses are given using clickers.**

There will be at least 50 questions throughout the semester. Each question is worth 1 mark, and you need at least 40 right answers to get the full 5%.
- **That is, if you answer 30 questions right, you get 30/40 or 75%. Thus, do not worry if you forget your clicker one day!** 


### Database Survey Question
***Question:***    
Have you used any of these database systems?  
A) MySQL  
B) Microsoft Access or SQL Server  
C) PostgreSQL  
D) Used more than two different databases  
E) Used no databases  


What Grade are You Expecting to Get?  
A) A  
B) B  
C) C  
D) D  
F) F  


### Why This Course is Important
Database systems store the majority of data that data analysts use.
Key skills:
- ***Query/update databases* - SQL to extract information from existing databases.**
- ***Program with databases* - Learn how to use Python and R to access data in a database then perform further analysis.**
- ***Be aware of data technologies* - XML, NoSQL, JSON, and a variety of others.**


### Why Relational Databases?
***Relational databases*** allow for the storage and analysis of large amounts of data.

Relational databases are the most common form of database used by companies and organizations for data management.

Since a significant amount of data is stored in relational databases, understanding how to create and query these databases using the SQL standard is a very valuable skill.

<STAR SLIDE STARTS>

### What is a database?
A **database** is a collection of logically related data for a particular domain.
  
A **database management system (DBMS)** is software designed for the creation and management of databases.
- *e.g. Oracle, DB2, Microsoft Access, MySQL, SQL Server, MongoDB*

Bottom line: A **database** is the *data* stored and a **database system** is the *software* that manages the data.

<STAR SLIDE ENDS>


### Databases in the Real-World
Databases are everywhere in the real-world even though you do not often interact with them directly.
- $40 billion dollar annual industry

Examples:
- Retailers manage their products and sales using a database.
- Wal-Mart has one of the largest databases in the world!
- Online web sites such as Amazon, eBay, and Expedia track orders, shipments, and customers using databases.
- The university maintains all your registration information and marks in a database that is accessible over the Internet.

Can you think of other examples?  
What data do you have?
  


### Data Independence and Abstraction
Without a database, applications use files to store data persistently. A **file-based system** has several problems: code and data duplication, high maintenance costs, and difficulty in supporting multiple users.
- *There is no **program-data independence** separating the application from the data it is manipulating. If the data file changes, the code must be changed.*

Databases provide **data abstraction** allowing the internal representation of the data to change without affecting programs that use the object through an external definition.
- *The DBMS takes the description of the data and handles the low-level details of how to store it, retrieve it, and provide concurrent access to it.*


### Database System Properties
A database system provides efficient, convenient, and safemulti-userstorage and access to massiveamounts of persistentdata.  

**Efficient** - Able to handle large data sets and complex queries without searching all files and data items.  
**Convenient** - Easy to write queries to retrieve data.  
**Safe** - Protects data from system failures and hackers.  
**Massive** - Database sizes in gigabytes, terabytes and petabytes.
**Persistent** - Data exists even if have a power failure.
**Multi-user** - More than one user can access and update data at the same time while preserving consistency.


<STAR SLIDE STARTs>
  
### Database Terminology
A **data model** is a collection of concepts that is used to describe the structure of a database. E.g. relational, XML, graphs, objects, JSON
- *In the relational model, data is represented as tables and fields.*

**Data Definition Language(DDL)** allows the user to create data structures in the data model used by the database. A **schema** is a description of the structure of the databaseand is maintained and stored in the **system catalog**. The schema is **metadata**.
- *A schema contains structures, names, and types of data stored.*

Once a database has been created using DDL, the user accesses data using a **Data Manipulation Language(DML)**.
- *The DML allows for the insertion, modification, retrieval, and deletion of data.*

SQL is a standard DDL and DML for the relational model.

<STAR SLIDE ENDS>

<STAR SLIDE STARTS>
  
### The Relational Model: Terminology
The **relational model** organizes data into tables called relations.
- *Developed by E. F. Codd in 1970 and used by most database systems.*

Terminology:
- A **relation** is a table with columns and rows.
- An **attribute** is a named column of a relation.
- A **tuple** is a row of a relation.
- A **domain** is a set of allowable values for one or more attributes.
- The **degree** of a relation is the number of attributes it contains.
- The **cardinality** of a relation is the number of tuples it contains.

<STAR SLIDE ENDS>
  
Claire you are at page 20/42
