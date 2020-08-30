# lecture 3

## SQL: SELECT Statement select-project-join-order by

<STAR SLIDE STARTS>

### SQL Queries using SELECT
A query in SQL has the form:
```
SELECT (list of columns or expressions)  
FROM (list of tables)  
WHERE (filter conditions)  
GROUP BY (columns)  
ORDER BY (columns)  
```

Notes:  
1) Separate the list of columns/expressions and list of tables by **commas**.
2) The "*" is used to select all columns.
3) Only `SELECT` required. `FROM`, `WHERE`, `GROUP BY`, `ORDER BY` are optional.

<STAR SLIDE ENDS>

### Example Database - WorksOn

<img src="../images/lecture3/databaseworkson.PNG" alt="databaseworkson" width="800" >

### SQL: Retrieving Only Some of the Columns
The **projection operation** creates a new table that has some of the columns of the input table. In SQL, provide the table in the `FROM` clause and the fields in the output in the `SELECT`.

Example: Return only the `eno` field from the `Emp` table:

<img src="../images/lecture3/retrieving.png" alt="retrieving" width="600" >

### SQL Projection Examples

<img src="../images/lecture3/projection.png" alt="projection" width="800" >

Notes:  
1) Duplicates are not removed during SQL projection.
2) `SELECT` *will return all columns.

### Projection Question
**Question**: Given this table and the query:
```
SELECT eno, ename, salary
FROM emp
```
How many columns are returned?
A)0 B)1 C)2 D)3 E)4

<img src="../images/lecture3/emp.png" alt="emp" width="400" >

### Projection Question #2
**Question**: Given this table and the query:
```
SELECTsalary
FROMemp
```
How many rows are returned?  
A) 0  
B) 2  
C) 4  
D) 8  

<img src="../images/lecture3/emp.png" alt="emp" width="400" >

### Duplicates in SQL
One major difference between SQL and relational algebra is that relations in SQL are **bags** instead of sets.
- It is possible to have two or more identical rows in a relation.
Consider the query: Return all titles of employees.
```
SELECT title
FROM emp
```

<img src="../images/lecture3/duplicate.png" alt="duplicate" width="600" >

### Duplicates in SQL -DISTINCTclause
To remove duplicates, use `DISTINCT` clause in the SQL statement:
```
SELECT DISTINCTtitle
FROMemp
```

<img src="../images/lecture3/result.png" alt="result" width="200" >


### DISTINCTQuestion
**Question**: Given this table and the query:
```
SELECTDISTINCT a, b
FROM R
```
How many rows are returned?  
A)1 B)3 C)4 D)6  

<img src="../images/lecture3/rtable.png" alt="rtable" width="400" >


### Try it: SQL SELECTand Projection
**Question**: Using the `proj` table, write these three queries:  
**1) Show all rows and all columns.**  
**2) Show all rows but only the `pno` column.**  
**3) Show all rows but only the `pno` and budget columns.**  
**4) Show unique `budget` values.**  

### Retrieving Only Some of the Rows
The **selection operation** creates a new table with some of the rows of the input table. A condition specifies which rows are in the new table. The condition is similar to an ifstatement.

Example: Return the projects in department 'D2':
```
SELECT pno, pname, budget, dno
FROM proj
WHERE dno = 'D2'
```

<img src="../images/lecture3/proj.png" alt="proj" width="400" >

Algorithm: Scan each tuple and check if matches condition in `WHERE` clause.

### Selection Conditions
The condition in a selection statement specifies which rows are included. It has the general form of an if statement.

The condition may consist of attributes, constants, comparison operators (<, >, =, !=, <=, >=), andlogical operators (AND, OR, NOT).


### SQL Selection Examples
<img src="../images/lecture3/selection.png" alt="selection" width="700" >

### Selection Question
**Question**: Given this table and the query:
```
SELECT*
FROMemp
WHEREtitle='SA'
```
<img src="../images/lecture3/relation.png" alt="relation" width="400" >
How many rows are returned?
A)0 B)1 C)2 D)3

### Selection Question #2
**Question**: Given this table and the query:
```
SELECT*
FROMemp
WHEREsalary > 50000 or title='PR'
```
<img src="../images/lecture3/table.png" alt="table" width="400" >
How many rows are returned?
A)0 B)1 C)2 D)3

### Try it: SQL SELECTand Filtering Rows
**Question**: Write these queries:
1) Return all projects with budget >$250000.
2) Show the pnoand pnamefor projects in dno = 'D1'.
3) Show pnoand dnofor projects in dno='D1'or dno='D2'.
4) Return the employee numbers who make less than $30000.
5) Return list of worksonresponsibilities (resp) with no duplicates.
6) Return the employee (names) born after July 1, 1970 that have a salary > 35000 and have a title of 'SA'or 'PR'.

### Joins for Combining Tables
A join combines two tables by matching columns in each table.
<img src="../images/lecture3/join.png" alt="join" width="700" >

### Join Details and Examples
Listing multiple tables in the `FROM` clauseseparated by commas creates a cross product of tables. Must specify JOINand ONor provide join condition in WHEREclause.

**Goal**: For each employee, return their name and department name.
<img src="../images/lecture3/join2.png" alt="join2" width="700" >

### Join Query with Selection Example
You can use join, selection, and projection in the same query.
- Recall: Projection returns columns listed in `SELECT`, selection filters out rows using condition in `WHERE`, and join combines tables in `FROM` using a condition.
Example: Return the employee names who are assigned to the 'Management' department.
<img src="../images/lecture3/join3.png" alt="join3" width="600" >

CLAIRE YOU ARE AT PAGE 20






