# Slide 37

create table mydata (
  num int,
  message varchar(50),
  amount decimal(8,2)
 );

Slide #38 - Try it: INSERT

insert into mydata values (1, 'Hello', 99.45);
insert into mydata values (2, 'Goodbye', 55.99);
insert into mydata (num, message) values (3, 'No Amount');


Slide #39 - Try it: UPDATE

UPDATE mydata SET amount = 99.99

UPDATE mydata SET num=10 WHERE num = 1

UPDATE mydata SET message = 'Changed' WHERE num = 2
