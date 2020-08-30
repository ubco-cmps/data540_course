# Lecture 4

## SQL: GROUP BY, Aggregation, Subqueries, Outer Joins

### Aggregate Queries and Functions
Several queries cannot be answered using the simple form of the `SELECT` statement. These queries require a summary calculation to be performed. 

Examples:
- **What is the maximum employee salary?**
- **What is the total number of hours worked on a project?**
- **How many employees are there in department 'D1'?**
To answer these queries requires the use of aggregate functions.  
These functions operate on a single column of a table and return a single value.


### Aggregate Functions
Five common aggregate functions are:
- COUNT-returns the # of values in a column
- SUM-returns the sum of the values in a column
- AVG-returns the average of the values in a column
- MIN-returns the smallest value in a column
- MAX-returns the largest value in a column

Notes:
1) `COUNT`, `MAX`, and `MIN` apply to all types of fields, whereas SUMand AVGapply to only numeric fields.
2) Except for `COUNT(*)` all functions ignore nulls. `COUNT(*) returns the number of rows in the table.
3) Use `DISTINCT` to eliminate duplicates.

### Aggregate Function Example
Return the number of employees and their average salary.
```
SELECTCOUNT(eno) AS numEmp, AVG(salary) AS avgSalary
FROM emp
```
<img src="../images/lecture4/results1.png" alt="results1" width="200" >

### GROUP BY Clause
Aggregate functions are most useful when combined with the **GROUP BY** clause. The GROUP BYclause groups the tuples based on the values of the attributes specified.

When used in combination with aggregate functions, the result is a table where each tuple consists of unique values for the group by attributes and the result of the aggregate functions applied to the tuples of that group.

### GROUP BY Example
For each employee title, return the number of employees with that title, and the minimum, maximum, and average salary.
```
SELECT title, COUNT(eno) AS numEmp,
MIN(salary) as minSal,
MAX(salary) as maxSal, AVG(salary) AS avgSal
FROM emp
GROUP BY title
```
<img src="../images/lecture4/results2.png alt="results2" width="400" >


### GROUP BYClause Rules
There are a few rules for using the `GROUP BY` clause:
1) A column name cannot appear in the `SELECT` part of the query unless it is part of an aggregate function or in the list of group by attributes.
  - Note that the reverse is allowed: a column can be in the `GROUP BY` without being in the `SELECT` part.
2) Any `WHERE` conditions are applied before the `GROUP BY` and aggregate functions are calculated.
3) You can group by multiple attributes. To be in the same group, all attribute values must be the same.


### GROUP BY Question
**Question**: Given this table and the query:
```
SELECT title, SUM(salary)
FROM emp
GROUP BY title
```
<img src="../images/lecture4/empralation.png alt="emprelation" width="400" >
How many rows are returned?
A)1 B)2 C)4 D)8

### GROUP BY Question #2
**Question**: Given this table and the query:
```
SELECT resp, pno, SUM(hours)
FROM workson
WHERE hours > 10
GROUP BY resp, pno
```
<img src="../images/lecture4/workson.png alt="workson" width="400" >
How many rows are returned?
A)9 B)7 C)5 D)1 E)0

CLAIRE YOU ARE AT PAGE 10!

