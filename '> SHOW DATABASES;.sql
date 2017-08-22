    '> SHOW DATABASES;
    '> 'SHOW DATABASES';
    '> '
    -> 
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '@claflin.edu',
'123 Main St',
'Yakima',
98901,
'792-223-8901',
'1990-4-5',
'M',
' at line 2
mysql> INSERT INTO student VALUE
    -> ('Mike','Johns','mjohns@claflin.edu',
    -> '123 Main St',
    -> 'Yakima',
    -> 'WA',
    -> 98901,
    -> '792-223-8901',
    -> '1990-4-5',
    -> 'M',
    -> NOW(),
    -> 3.50,
    -> NULL);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> INSERT INTO student VALUE ('Mike','Johns','mjohns@claflin.edu', '123 Main St', 'Yakima', 'WA', 98901, '792-223-8901',"1990-2-22", 'M', NOW(), 3.50, NULL);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> SHOW TABLES
    -> SHOW TABLES;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SHOW TABLES' at line 2
mysql> SHOW TABLES SHOW TABLES;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SHOW TABLES' at line 1
mysql>  SHOW TABLES;
+------------------------------+
| Tables_in_studentinformation |
+------------------------------+
| student                      |
+------------------------------+
1 row in set (0.04 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| studentInformation |
| sys                |
+--------------------+
5 rows in set (0.01 sec)

mysql> SHOW TABLES;
+------------------------------+
| Tables_in_studentinformation |
+------------------------------+
| student                      |
+------------------------------+
1 row in set (0.02 sec)

mysql> DESCRIBE student
    -> DESCRIBE student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DESCRIBE student' at line 2
mysql> DESCRIBE student;
+--------------+-----------------------+------+-----+-------------------+-----------------------------+
| Field        | Type                  | Null | Key | Default           | Extra                       |
+--------------+-----------------------+------+-----+-------------------+-----------------------------+
| first_name   | varchar(30)           | NO   |     | NULL              |                             |
| last_name    | varchar(30)           | NO   |     | NULL              |                             |
| email        | varchar(60)           | YES  |     | NULL              |                             |
| street       | varchar(50)           | NO   |     | NULL              |                             |
| city         | varchar(40)           | NO   |     | NULL              |                             |
| state        | char(2)               | NO   |     | PA                |                             |
| zip          | mediumint(8) unsigned | NO   |     | NULL              |                             |
| birth_date   | date                  | NO   |     | NULL              |                             |
| sex          | enum('M','F')         | NO   |     | NULL              |                             |
| date_entered | timestamp             | NO   |     | CURRENT_TIMESTAMP | on update CURRENT_TIMESTAMP |
| lunch_cost   | float                 | YES  |     | NULL              |                             |
| student_id   | int(10) unsigned      | NO   | PRI | NULL              | auto_increment              |
+--------------+-----------------------+------+-----+-------------------+-----------------------------+
12 rows in set (0.03 sec)

mysql> INSERT INTO student VALUE ('Mike','Johns','mjohns@claflin.edu', '123 Main St', 'Yakima', 'WA', 98901',"1990-2-22", 'M', NOW(), 3.50, NULL); 
    
    -> INSERT INTO student VALUE ('Mike','Johns','mjohns@claflin.edu', '123 Main St', 'Yakima', 'WA', '98901',"1990-2-22", 'M', NOW(), 3.50, NULL);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '',"1990-2-22", 'M', NOW(), 3.50, NULL);
INSERT INTO student VALUE ('Mike','Johns' at line 1
mysql> INSERT INTO student VALUE ('Mike','Johns','mjohns@claflin.edu', '123 Main St', 'Yakima', 'WA', '98901',"1990-2-22", 'M', NOW(), 3.50, NULL);             Query OK, 1 row affected (0.04 sec)

mysql> SELECT * FROM student;
+------------+-----------+--------------------+-------------+--------+-------+-------+------------+-----+---------------------+------------+------------+
| first_name | last_name | email              | street      | city   | state | zip   | birth_date | sex | date_entered        | lunch_cost | student_id |
+------------+-----------+--------------------+-------------+--------+-------+-------+------------+-----+---------------------+------------+------------+
| Mike       | Johns     | mjohns@claflin.edu | 123 Main St | Yakima | WA    | 98901 | 1990-02-22 | M   | 2017-08-11 10:22:32 |        3.5 |          1 |
+------------+-----------+--------------------+-------------+--------+-------+-------+------------+-----+---------------------+------------+------------+
1 row in set (0.05 sec)

mysql> INSERT INTO student VALUE ('Bilha','Chumbaa','bchumbaa@claflin.edu', '400 Magnolia St', 'Orangeburg', 'SC', '29445',"1999-7-22", 'F', NOW(), 4.50, NULL); 
Query OK, 1 row affected (0.04 sec)

mysql> SELECT * FROM student;
+------------+-----------+----------------------+-----------------+------------+-------+-------+------------+-----+---------------------+------------+------------+
| first_name | last_name | email                | street          | city       | state | zip   | birth_date | sex | date_entered        | lunch_cost | student_id |
+------------+-----------+----------------------+-----------------+------------+-------+-------+------------+-----+---------------------+------------+------------+
| Mike       | Johns     | mjohns@claflin.edu   | 123 Main St     | Yakima     | WA    | 98901 | 1990-02-22 | M   | 2017-08-11 10:22:32 |        3.5 |          1 |
| Bilha      | Chumbaa   | bchumbaa@claflin.edu | 400 Magnolia St | Orangeburg | SC    | 29445 | 1999-07-22 | F   | 2017-08-11 10:36:21 |        4.5 |          2 |
+------------+-----------+----------------------+-----------------+------------+-------+-------+------------+-----+---------------------+------------+------------+
2 rows in set (0.00 sec)

mysql> INSERT INTO student VALUE ('Dominic','Bett','dbett@claflin.edu', '400 Magnolia St', 'Orangeburg', 'SC', '29445',"1992-12-22", 'M', NOW(), 5.50, NULL);
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM student;
+------------+-----------+----------------------+-----------------+------------+-------+-------+------------+-----+---------------------+------------+------------+
| first_name | last_name | email                | street          | city       | state | zip   | birth_date | sex | date_entered        | lunch_cost | student_id |
+------------+-----------+----------------------+-----------------+------------+-------+-------+------------+-----+---------------------+------------+------------+
| Mike       | Johns     | mjohns@claflin.edu   | 123 Main St     | Yakima     | WA    | 98901 | 1990-02-22 | M   | 2017-08-11 10:22:32 |        3.5 |          1 |
| Bilha      | Chumbaa   | bchumbaa@claflin.edu | 400 Magnolia St | Orangeburg | SC    | 29445 | 1999-07-22 | F   | 2017-08-11 10:36:21 |        4.5 |          2 |
| Dominic    | Bett      | dbett@claflin.edu    | 400 Magnolia St | Orangeburg | SC    | 29445 | 1992-12-22 | M   | 2017-08-11 10:41:31 |        5.5 |          3 |
+------------+-----------+----------------------+-----------------+------------+-------+-------+------------+-----+---------------------+------------+------------+
3 rows in set (0.00 sec)

mysql> INSERT INTO student VALUE ('Bobby','Browns','bbrowns@claflin.edu', '500 Silicon St', 'San Fransisco', 'CA', '67890',"1992-7-20", 'M', NOW(), 0.50, NULL);
Query OK, 1 row affected (0.00 sec)

mysql> SELECT * FROM student;
+------------+-----------+----------------------+-----------------+---------------+-------+-------+------------+-----+---------------------+------------+------------+
| first_name | last_name | email                | street          | city          | state | zip   | birth_date | sex | date_entered        | lunch_cost | student_id |
+------------+-----------+----------------------+-----------------+---------------+-------+-------+------------+-----+---------------------+------------+------------+
| Mike       | Johns     | mjohns@claflin.edu   | 123 Main St     | Yakima        | WA    | 98901 | 1990-02-22 | M   | 2017-08-11 10:22:32 |        3.5 |          1 |
| Bilha      | Chumbaa   | bchumbaa@claflin.edu | 400 Magnolia St | Orangeburg    | SC    | 29445 | 1999-07-22 | F   | 2017-08-11 10:36:21 |        4.5 |          2 |
| Dominic    | Bett      | dbett@claflin.edu    | 400 Magnolia St | Orangeburg    | SC    | 29445 | 1992-12-22 | M   | 2017-08-11 10:41:31 |        5.5 |          3 |
| Bobby      | Browns    | bbrowns@claflin.edu  | 500 Silicon St  | San Fransisco | CA    | 67890 | 1992-07-20 | M   | 2017-08-11 10:45:10 |        0.5 |          4 |
+------------+-----------+----------------------+-----------------+---------------+-------+-------+------------+-----+---------------------+------------+------------+
4 rows in set (0.00 sec)

mysql> CREATE TABLE class(
    -> name VARCHAR(30) NOT NULL,
    -> class_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY);
Query OK, 0 rows affected (0.09 sec)

mysql> INSERT INTO class VALUES
    -> ('English',NULL),('Speech',NULL),('Literature',NULL),
    -> ('Algebra',Null),('Geometry',NULL),('Trigonometry',NULL),
    -> ('Calculus',NULL),('Earth Science',NULL),('Biology',NULL),
    -> ('Chemistry',NULL),('Physics',NULL),('History',NULL),
    -> ('Art',NULL),('Gym',NULL);
Query OK, 14 rows affected (0.05 sec)
Records: 14  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM class;
+---------------+----------+
| name          | class_id |
+---------------+----------+
| English       |        1 |
| Speech        |        2 |
| Literature    |        3 |
| Algebra       |        4 |
| Geometry      |        5 |
| Trigonometry  |        6 |
| Calculus      |        7 |
| Earth Science |        8 |
| Biology       |        9 |
| Chemistry     |       10 |
| Physics       |       11 |
| History       |       12 |
| Art           |       13 |
| Gym           |       14 |
+---------------+----------+
14 rows in set (0.01 sec)

mysql> CREATE TABLE test(
    -> date DATE NOT NULL,
    -> type ENUM('T','Q') NOT NULL,
    -> class_id INT UNSIGNED NOT NULL,
    -> test_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY);
Query OK, 0 rows affected (0.04 sec)

mysql> SHOW TABLES;
+------------------------------+
| Tables_in_studentinformation |
+------------------------------+
| class                        |
| student                      |
| test                         |
+------------------------------+
3 rows in set (0.01 sec)

mysql> CREATE TABLE score(
    -> student_id INT UNSIGNED NOT NULL,
    -> event_id INT UNSIGNED NOT NULL,
    -> score INT NOT NULL,
    -> PRIMARY KEY(event_id, student_id));
Query OK, 0 rows affected (0.14 sec)

mysql> CREATE TABLE absence(
    -> student_id INT UNSIGNED NOT NULL,
    -> date DATE NOT NULL,
    -> PRIMARY KEY(student_id, date));
Query OK, 0 rows affected (0.05 sec)

mysql> SHOW TABLES;
+------------------------------+
| Tables_in_studentinformation |
+------------------------------+
| absence                      |
| class                        |
| score                        |
| student                      |
| test                         |
+------------------------------+
5 rows in set (0.03 sec)

mysql> DESCRIBE test;
+----------+------------------+------+-----+---------+----------------+
| Field    | Type             | Null | Key | Default | Extra          |
+----------+------------------+------+-----+---------+----------------+
| date     | date             | NO   |     | NULL    |                |
| type     | enum('T','Q')    | NO   |     | NULL    |                |
| class_id | int(10) unsigned | NO   |     | NULL    |                |
| test_id  | int(10) unsigned | NO   | PRI | NULL    | auto_increment |
+----------+------------------+------+-----+---------+----------------+
4 rows in set (0.04 sec)

mysql> ALTER TABLE test
    -> ADD maxscore INT NULL AFTER type;
Query OK, 0 rows affected (0.13 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESCRIBE test;
+----------+------------------+------+-----+---------+----------------+
| Field    | Type             | Null | Key | Default | Extra          |
+----------+------------------+------+-----+---------+----------------+
| date     | date             | NO   |     | NULL    |                |
| type     | enum('T','Q')    | NO   |     | NULL    |                |
| maxscore | int(11)          | YES  |     | NULL    |                |
| class_id | int(10) unsigned | NO   |     | NULL    |                |
| test_id  | int(10) unsigned | NO   | PRI | NULL    | auto_increment |
+----------+------------------+------+-----+---------+----------------+
5 rows in set (0.01 sec)

mysql> INSERT INTO test VALUES
    -> ('2014-8-25','Q',15,1,NULL),
    -> ('2014-8-27','Q',15,1,NULL),
    ->     -> ('2014-8-27','Q',15,1,NULL),
    -> ('2014-8-29','T',30,2,NULL),
    -> ('2014-8-27','Q',15,4,NULL);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> ('2014-8-27','Q',15,1,NULL),
('2014-8-29','T',30,2,NULL),
('2014-8-27','Q',15' at line 4
mysql> ('2014-8-25','Q',15,1,NULL),                                                                                   
    -> ('2014-8-27','Q',15,1,NULL),                                                                                   
    -> ('2014-8-29','T',30,1,NULL),
    -> ('2014-8-29','T',30,2,NULL),
    -> ('2014-8-27','Q',15,4,NULL);                                                                                          ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''2014-8-25','Q',15,1,NULL),
('2014-8-27','Q',15,1,NULL),
('2014-8-29','T',30,1,N' at line 1
mysql> INSERT INTO test VALUES
    -> ('2014-8-25','Q',15,1,NULL),                                                                                   
    -> ('2014-8-27','Q',15,1,NULL),                                                                                              -> ('2014-8-29','T',30,1,NULL),                                                                                              -> ('2014-8-29','T',30,2,NULL),                                                                                              -> ('2014-8-27','Q',15,4,NULL),
    -> ('2014-8-29','T',30,4,NULL);
Query OK, 6 rows affected (0.07 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM test;
+------------+------+----------+----------+---------+
| date       | type | maxscore | class_id | test_id |
+------------+------+----------+----------+---------+
| 2014-08-25 | Q    |       15 |        1 |       1 |
| 2014-08-27 | Q    |       15 |        1 |       2 |
| 2014-08-29 | T    |       30 |        1 |       3 |
| 2014-08-29 | T    |       30 |        2 |       4 |
| 2014-08-27 | Q    |       15 |        4 |       5 |
| 2014-08-29 | T    |       30 |        4 |       6 |
+------------+------+----------+----------+---------+
6 rows in set (0.03 sec)

mysql> DESCRIBE score;
+------------+------------------+------+-----+---------+-------+
| Field      | Type             | Null | Key | Default | Extra |
+------------+------------------+------+-----+---------+-------+
| student_id | int(10) unsigned | NO   | PRI | NULL    |       |
| event_id   | int(10) unsigned | NO   | PRI | NULL    |       |
| score      | int(11)          | NO   |     | NULL    |       |
+------------+------------------+------+-----+---------+-------+
3 rows in set (0.06 sec)

mysql> ALTER TABLE score CHANGE event_id to test_id INT UNSIGNED NOT NULL;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'to test_id INT UNSIGNED NOT NULL' at line 1
mysql> ALTER TABLE score CHANGE event_id to test_id 
    -> INT UNSIGNED NOT NULL;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'to test_id
INT UNSIGNED NOT NULL' at line 1
mysql> DESCRIBE SCORE;
+------------+------------------+------+-----+---------+-------+
| Field      | Type             | Null | Key | Default | Extra |
+------------+------------------+------+-----+---------+-------+
| student_id | int(10) unsigned | NO   | PRI | NULL    |       |
| event_id   | int(10) unsigned | NO   | PRI | NULL    |       |
| score      | int(11)          | NO   |     | NULL    |       |
+------------+------------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> ALTER TABLE score CHANGE event_id test_id INT UNSIGNED NULL;
ERROR 1171 (42000): All parts of a PRIMARY KEY must be NOT NULL; if you need NULL in a key, use UNIQUE instead
mysql> ALTER TABLE score CHANGE event_id test_id INT UNSIGNED NOT NULL;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESCRIBE SCORE;
+------------+------------------+------+-----+---------+-------+
| Field      | Type             | Null | Key | Default | Extra |
+------------+------------------+------+-----+---------+-------+
| student_id | int(10) unsigned | NO   | PRI | NULL    |       |
| test_id    | int(10) unsigned | NO   | PRI | NULL    |       |
| score      | int(11)          | NO   |     | NULL    |       |
+------------+------------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> INSERT INTO score VALUES
    -> (7,3,25),
    -> (7,4,27),
    -> (7,5,13),
    -> #missed this day (7,6,27),
    -> (8,1,14),
    -> #missed this day (8,2,13),
    -> (8,3,26),
    -> (8,4,23),
    -> (8,6,24),
    -> (9,1,15),
    -> (9,2,13),
    -> (9,3,28),
    -> (9,4,27),
    -> (9,5,14),
    -> (9,6,27),
    -> (10,1,15),
    -> (10,2,13),
    -> (10,3,26),
    -> (10,4,27),
    -> (10,5,12),
    -> (10,6,27);
Query OK, 19 rows affected (0.02 sec)
Records: 19  Duplicates: 0  Warnings: 0

mysql> DESCRIBE absence;
+------------+------------------+------+-----+---------+-------+
| Field      | Type             | Null | Key | Default | Extra |
+------------+------------------+------+-----+---------+-------+
| student_id | int(10) unsigned | NO   | PRI | NULL    |       |
| date       | date             | NO   | PRI | NULL    |       |
+------------+------------------+------+-----+---------+-------+
2 rows in set (0.02 sec)

mysql> INSERT INTO absence VALUES
    -> (6,'2014-08-29'),
    -> (7,'2014-08-29'),
    -> (7,'2014-08-27');
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT FIST_NAME, LAST_NAME FROM student;
ERROR 1054 (42S22): Unknown column 'FIST_NAME' in 'field list'
mysql> SELECT FIrst_name, last_name FROM student;
+------------+-----------+
| FIrst_name | last_name |
+------------+-----------+
| Mike       | Johns     |
| Bilha      | Chumbaa   |
| Dominic    | Bett      |
| Bobby      | Browns    |
+------------+-----------+
4 rows in set (0.01 sec)

mysql> show tables;
+------------------------------+
| Tables_in_studentinformation |
+------------------------------+
| absence                      |
| class                        |
| score                        |
| student                      |
| test                         |
+------------------------------+
5 rows in set (0.01 sec)

mysql> RENAME TABLE
    -> absence to absences,
    -> class to classes,
    -> score to scores,
    -> student to students,
    -> test to tests;
Query OK, 0 rows affected (0.08 sec)

mysql> SHOW TABLES;
+------------------------------+
| Tables_in_studentinformation |
+------------------------------+
| absences                     |
| classes                      |
| scores                       |
| students                     |
| tests                        |
+------------------------------+
5 rows in set (0.01 sec)

mysql> SELECT first_name, last_name, state FROM students WHERE state="CA";
+------------+-----------+-------+
| first_name | last_name | state |
+------------+-----------+-------+
| Bobby      | Browns    | CA    |
+------------+-----------+-------+
1 row in set (0.02 sec)

mysql> SELECT first_name, last_name, birth_date FROM students WHERE YEAR(birth_date)>=1965;
+------------+-----------+------------+
| first_name | last_name | birth_date |
+------------+-----------+------------+
| Mike       | Johns     | 1990-02-22 |
| Bilha      | Chumbaa   | 1999-07-22 |
| Dominic    | Bett      | 1992-12-22 |
| Bobby      | Browns    | 1992-07-20 |
+------------+-----------+------------+
4 rows in set (0.02 sec)

mysql> SELECT first_name, last_name, birth_date FROM students WHERE YEAR(birth_date)>=1961;
+------------+-----------+------------+
| first_name | last_name | birth_date |
+------------+-----------+------------+
| Mike       | Johns     | 1990-02-22 |
| Bilha      | Chumbaa   | 1999-07-22 |
| Dominic    | Bett      | 1992-12-22 |
| Bobby      | Browns    | 1992-07-20 |
+------------+-----------+------------+
4 rows in set (0.00 sec)

mysql> SELECT first_name, last_name, birth_date FROM students WHERE YEAR(birth_date)>=1991;
+------------+-----------+------------+
| first_name | last_name | birth_date |
+------------+-----------+------------+
| Bilha      | Chumbaa   | 1999-07-22 |
| Dominic    | Bett      | 1992-12-22 |
| Bobby      | Browns    | 1992-07-20 |
+------------+-----------+------------+
3 rows in set (0.00 sec)

mysql> SELECT first_name, last_name, birth_date FROM students WHERE MONTH(birth_date)=2 OR state="CA";
+------------+-----------+------------+
| first_name | last_name | birth_date |
+------------+-----------+------------+
| Mike       | Johns     | 1990-02-22 |
| Bobby      | Browns    | 1992-07-20 |
+------------+-----------+------------+
2 rows in set (0.04 sec)

mysql> SELECT last_name, FROM students WHERE last_name is NOT NULL ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM students WHERE last_name is NOT NULL' at line 1
mysql> SELECT last_namE FROM students WHERE last_name is NOT NULL ;
+-----------+
| last_namE |
+-----------+
| Johns     |
| Chumbaa   |
| Bett      |
| Browns    |
+-----------+
4 rows in set (0.01 sec)

mysql> SELECT last_namE FROM students WHERE last_name is  NULL ;
Empty set (0.01 sec)

mysql> SELECT first_name, last_name, birth_date FROM stUDENTS ORDER by Last_name;
+------------+-----------+------------+
| first_name | last_name | birth_date |
+------------+-----------+------------+
| Dominic    | Bett      | 1992-12-22 |
| Bobby      | Browns    | 1992-07-20 |
| Bilha      | Chumbaa   | 1999-07-22 |
| Mike       | Johns     | 1990-02-22 |
+------------+-----------+------------+
4 rows in set (0.01 sec)

mysql> SELECT first_name, last_name, birth_date FROM stUDENTS ORDER by state DESC,last_name ASC;
+------------+-----------+------------+
| first_name | last_name | birth_date |
+------------+-----------+------------+
| Mike       | Johns     | 1990-02-22 |
| Dominic    | Bett      | 1992-12-22 |
| Bilha      | Chumbaa   | 1999-07-22 |
| Bobby      | Browns    | 1992-07-20 |
+------------+-----------+------------+
4 rows in set (0.02 sec)

mysql> SELECT first_name, last_name, state  FROM stUDENTS ORDER by state DESC,last_name ASC;
+------------+-----------+-------+
| first_name | last_name | state |
+------------+-----------+-------+
| Mike       | Johns     | WA    |
| Dominic    | Bett      | SC    |
| Bilha      | Chumbaa   | SC    |
| Bobby      | Browns    | CA    |
+------------+-----------+-------+
4 rows in set (0.00 sec)

mysql> SELECT first_name, last_name, state  FROM stUDENTS LIMIT 2;
+------------+-----------+-------+
| first_name | last_name | state |
+------------+-----------+-------+
| Mike       | Johns     | WA    |
| Bilha      | Chumbaa   | SC    |
+------------+-----------+-------+
2 rows in set (0.01 sec)

mysql> SELECT first_name, last_name, state  FROM stUDENTS LIMIT 2,5;
+------------+-----------+-------+
| first_name | last_name | state |
+------------+-----------+-------+
| Dominic    | Bett      | SC    |
| Bobby      | Browns    | CA    |
+------------+-----------+-------+
2 rows in set (0.00 sec)

mysql> SELECT CONCAT(first_name," ", last_name) AS 'Name', CONCAT(city," ", state) AS 'HOMETOWN'  FROM stUDENTS LIMIT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> SELECT CONCAT(first_name," ", last_name) AS 'Name', CONCAT(city," ", state) AS 'HOMETOWN'  FROM stUDENTS;
+---------------+------------------+
| Name          | HOMETOWN         |
+---------------+------------------+
| Mike Johns    | Yakima WA        |
| Bilha Chumbaa | Orangeburg SC    |
| Dominic Bett  | Orangeburg SC    |
| Bobby Browns  | San Fransisco CA |
+---------------+------------------+
4 rows in set (0.01 sec)

mysql> SELECT first_name, last_name, state  FROM stUDENTS where first_name like 'B%';
+------------+-----------+-------+
| first_name | last_name | state |
+------------+-----------+-------+
| Bilha      | Chumbaa   | SC    |
| Bobby      | Browns    | CA    |
+------------+-----------+-------+
2 rows in set (0.01 sec)

mysql> SELECT first_name, last_name, state  FROM stUDENTS where last_name LIKE '%a';
+------------+-----------+-------+
| first_name | last_name | state |
+------------+-----------+-------+
| Bilha      | Chumbaa   | SC    |
+------------+-----------+-------+
1 row in set (0.00 sec)

mysql> SELECT DISTINCT state FROM students ORDER BY state;
+-------+
| state |
+-------+
| CA    |
| SC    |
| WA    |
+-------+
3 rows in set (0.02 sec)

mysql> SELECT COUNT(DISTINCT state) FROM students;
+-----------------------+
| COUNT(DISTINCT state) |
+-----------------------+
|                     3 |
+-----------------------+
1 row in set (0.01 sec)

mysql> SELECT COUNT(*) FROM students;
+----------+
| COUNT(*) |
+----------+
|        4 |
+----------+
1 row in set (0.01 sec)

mysql> SELECT COUNT(*) FROM students WHERE sex='M';
+----------+
| COUNT(*) |
+----------+
|        3 |
+----------+
1 row in set (0.01 sec)

mysql> SELECT sex, COUNT(*) FROM students GROUP BY SEX;
+-----+----------+
| sex | COUNT(*) |
+-----+----------+
| M   |        3 |
| F   |        1 |
+-----+----------+
2 rows in set (0.04 sec)

mysql> SELECT Month(birth_date) AS 'Month',COUNT(*)
    -> FROM students
    -> GROUP BY month
    -> ORDER BY MONTH;
+-------+----------+
| Month | COUNT(*) |
+-------+----------+
|     2 |        1 |
|     7 |        2 |
|    12 |        1 |
+-------+----------+
3 rows in set (0.01 sec)

mysql> SELECT state, COUNT(STATE) AS Amount
    -> FROM students
    -> GROUP BY state
    -> HAVING Amount >1;
+-------+--------+
| state | Amount |
+-------+--------+
| SC    |      2 |
+-------+--------+
1 row in set (0.02 sec)

mysql> SELECT 
    -> test-id AS 'Test',
    -> MIN(score) AS min,
    -> MAX(score) AS max,
    -> MAX(score)-MIN(score) AS 'range',
    -> SUM(score) AS total,
    -> AVG(score) AS average,
    -> FROM scores
    -> GROUP BY test_id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM scores
GROUP BY test_id' at line 8
mysql> SELECT  test-id AS 'Test', MIN(score) AS min, MAX(score) AS max, MAX(score)-MIN(score) AS 'range', SUM(score) AS total, AVG(score) AS average FROM scores GROUP BY test_id;
ERROR 1054 (42S22): Unknown column 'test' in 'field list'
mysql> SELECT  test_id AS 'Test', MIN(score) AS min, MAX(score) AS max, MAX(score)-MIN(score) AS 'range', SUM(score) AS total, AVG(score) AS average FROM scores GROUP BY test_id;
+------+------+------+-------+-------+---------+
| Test | min  | max  | range | total | average |
+------+------+------+-------+-------+---------+
|    1 |   14 |   15 |     1 |    44 | 14.6667 |
|    2 |   13 |   13 |     0 |    26 | 13.0000 |
|    3 |   25 |   28 |     3 |   105 | 26.2500 |
|    4 |   23 |   27 |     4 |   104 | 26.0000 |
|    5 |   12 |   14 |     2 |    39 | 13.0000 |
|    6 |   24 |   27 |     3 |    78 | 26.0000 |
+------+------+------+-------+-------+---------+
6 rows in set (0.04 sec)

mysql> SELECT * from absences;
+------------+------------+
| student_id | date       |
+------------+------------+
|          6 | 2014-08-29 |
|          7 | 2014-08-27 |
|          7 | 2014-08-29 |
+------------+------------+
3 rows in set (0.04 sec)

mysql> DESCRIBE SCORES;
+------------+------------------+------+-----+---------+-------+
| Field      | Type             | Null | Key | Default | Extra |
+------------+------------------+------+-----+---------+-------+
| student_id | int(10) unsigned | NO   | PRI | NULL    |       |
| test_id    | int(10) unsigned | NO   | PRI | NULL    |       |
| score      | int(11)          | NO   |     | NULL    |       |
+------------+------------------+------+-----+---------+-------+
3 rows in set (0.04 sec)

mysql> SELECT student_id, test_id FROM scores WHERE student_id = 6;
Empty set (0.01 sec)

mysql> SELECT student_id, test_id FROM scores WHERE student_id = 2;
Empty set (0.01 sec)

mysql> SELECT student_id, test_id FROM scores WHERE student_id = 1;
Empty set (0.00 sec)

mysql> SELECT student_id, test_id FROM scores WHERE student_id = 7;
+------------+---------+
| student_id | test_id |
+------------+---------+
|          7 |       3 |
|          7 |       4 |
|          7 |       5 |
+------------+---------+
3 rows in set (0.00 sec)

mysql> INSERT INTO scores VALUES(6,3,24);
Query OK, 1 row affected (0.03 sec)

mysql> SELECT student_id, test_id FROM scores WHERE student_id = 6;
+------------+---------+
| student_id | test_id |
+------------+---------+
|          6 |       3 |
+------------+---------+
1 row in set (0.00 sec)

mysql> INSERT INTO scores VALUES(7,3,24);
ERROR 1062 (23000): Duplicate entry '3-7' for key 'PRIMARY'
mysql> INSERT INTO scores VALUES(7,3,25);
ERROR 1062 (23000): Duplicate entry '3-7' for key 'PRIMARY'
mysql> INSERT INTO scores VALUES(7,2,25);
Query OK, 1 row affected (0.00 sec)

mysql> SELECT student_id, test_id FROM scores WHERE student_id = 7;
+------------+---------+
| student_id | test_id |
+------------+---------+
|          7 |       2 |
|          7 |       3 |
|          7 |       4 |
|          7 |       5 |
+------------+---------+
4 rows in set (0.00 sec)

mysql> DELETE FROM absences WHERE student_id = 7;
Query OK, 2 rows affected (0.02 sec)

mysql> SELECT * from absences;
+------------+------------+
| student_id | date       |
+------------+------------+
|          6 | 2014-08-29 |
+------------+------------+
1 row in set (0.00 sec)

mysql> DESCRIBE absences;
+------------+------------------+------+-----+---------+-------+
| Field      | Type             | Null | Key | Default | Extra |
+------------+------------------+------+-----+---------+-------+
| student_id | int(10) unsigned | NO   | PRI | NULL    |       |
| date       | date             | NO   | PRI | NULL    |       |
+------------+------------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> ALTER TABLE absences 
    -> ADD COLUMN test_taken CHAR(1) NOT NULL DEFAULT 'F'
    -> AFTER student_id;
Query OK, 0 rows affected (0.12 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESCRIBE absences;
+------------+------------------+------+-----+---------+-------+
| Field      | Type             | Null | Key | Default | Extra |
+------------+------------------+------+-----+---------+-------+
| student_id | int(10) unsigned | NO   | PRI | NULL    |       |
| test_taken | char(1)          | NO   |     | F       |       |
| date       | date             | NO   | PRI | NULL    |       |
+------------+------------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> ALTER TABLE absences
    -> MODIFY COLUMN test_taken ENUM('T','F')NOT NULL DEFAULT 'F';
Query OK, 1 row affected (0.05 sec)
Records: 1  Duplicates: 0  Warnings: 0

mysql> DESCRIBE absences;
+------------+------------------+------+-----+---------+-------+
| Field      | Type             | Null | Key | Default | Extra |
+------------+------------------+------+-----+---------+-------+
| student_id | int(10) unsigned | NO   | PRI | NULL    |       |
| test_taken | enum('T','F')    | NO   |     | F       |       |
| date       | date             | NO   | PRI | NULL    |       |
+------------+------------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> ALTER TABLE absences
    -> DROP COLUMN test_taken;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESCRIBE absences;
+------------+------------------+------+-----+---------+-------+
| Field      | Type             | Null | Key | Default | Extra |
+------------+------------------+------+-----+---------+-------+
| student_id | int(10) unsigned | NO   | PRI | NULL    |       |
| date       | date             | NO   | PRI | NULL    |       |
+------------+------------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> SELECT * FROM scores WHERE student_id = 4;
Empty set (0.00 sec)

mysql> SELECT * FROM scores WHERE student_id = 1;
Empty set (0.00 sec)

mysql> SELECT * FROM scores WHERE student_id = 6;
+------------+---------+-------+
| student_id | test_id | score |
+------------+---------+-------+
|          6 |       3 |    24 |
+------------+---------+-------+
1 row in set (0.00 sec)

mysql> UPDATE scores SET score = 27 WHERE student_id = 6 AND test_id = 3;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM scores WHERE student_id = 6;
+------------+---------+-------+
| student_id | test_id | score |
+------------+---------+-------+
|          6 |       3 |    27 |
+------------+---------+-------+
1 row in set (0.01 sec)

mysql> SELECT first_name, last_name, birth_date  FROM Students where birth_date BETWEEN '1990-1-1' AND '1991-1-1';
+------------+-----------+------------+
| first_name | last_name | birth_date |
+------------+-----------+------------+
| Mike       | Johns     | 1990-02-22 |
+------------+-----------+------------+
1 row in set (0.02 sec)

mysql> SELECT first_name, last_name, birth_date  FROM Students where first_name IN ('Bilha');
+------------+-----------+------------+
| first_name | last_name | birth_date |
+------------+-----------+------------+
| Bilha      | Chumbaa   | 1999-07-22 |
+------------+-----------+------------+
1 row in set (0.01 sec)

mysql> SELECT student_id, date, score, maxscore FROM tests, scores 
    -> WHERE date = '2014-08-25' AND tests.test_id = scores.test_id;
+------------+------------+-------+----------+
| student_id | date       | score | maxscore |
+------------+------------+-------+----------+
|          8 | 2014-08-25 |    14 |       15 |
|          9 | 2014-08-25 |    15 |       15 |
|         10 | 2014-08-25 |    15 |       15 |
+------------+------------+-------+----------+
3 rows in set (0.02 sec)

mysql> SELECT scores.student_id, tests.date, scores.score, tests.maxscore FROM tests, scores
    -> WHERE date = '2014-08-25'
    -> AND tests.test_id = scores.test_id;
+------------+------------+-------+----------+
| student_id | date       | score | maxscore |
+------------+------------+-------+----------+
|          8 | 2014-08-25 |    14 |       15 |
|          9 | 2014-08-25 |    15 |       15 |
|         10 | 2014-08-25 |    15 |       15 |
+------------+------------+-------+----------+
3 rows in set (0.01 sec)

mysql> SELECT CONCAT(student.first_name," ", students.last_name) AS Name,
    -> 
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> SELECT CONCAT(students.first_name," ", students.last_name) AS Name,
    -> tests.date, scores.score,tests.maxscore
    -> FROM tests, scores, students
    -> WHERE date = '2014-08-25'
    -> AND tests.test_id = scores.test_id
    -> AND scores.student_id = students.students_id;
ERROR 1054 (42S22): Unknown column 'students.students_id' in 'where clause'
mysql> SELECT CONCAT(students.first_name," ", students.last_name) AS Name, tests.date, scores.score,tests.maxscore FROM tests, scores, students WHERE date = '2mysql> SELECT CONCAT(students.first_name," ", students.last_name) AS Name, tests.date, scores.score,tests.maxscore FROM tests, scores, students WHERE date = '2014-08-25' AND tests.test_id = scores.test_id AND scores.student_id = students.students_id;
ERROR 1054 (42S22): Unknown column 'students.students_id' in 'where clause'
mysql> SELECT CONCAT(students.first_name," ", students.last_name) AS Name, tests.date, scores.score,tests.maxscore FROM tests, scores, students WHERE date = '2014-08-25' AND tests.test_id = scores.test_id AND scores.student_id = students.student_id;
Empty set (0.01 sec)

mysql> SELECT students.students_id,
    -> CONCAT(students.first_name," ", students.last_name) AS Name,
    -> COUNT(absences.date) AS absences
    -> FROM students, absences
    -> WHERE students.student_id = absences.student_id
    -> GROUP BY students.student_id;
ERROR 1054 (42S22): Unknown column 'students.students_id' in 'field list'
mysql> SELECT students.student_id,
    -> CONCAT(students.first_name," ", students.last_name) AS Name,
    -> COUNT(absences.date) AS absences
    -> FROM students, absences
    -> WHERE students.student_id = absences.student_id                                     -> GROUP BY students.student_id;                                                   Empty set (0.02 sec)

mysql> SELECT students.student_id,
    -> CONCAT(students.first_name," ", students.last_name) AS Name,
    -> COUNT(absences.date) AS absences
    -> FROM students LEFT JOIN absences
    -> ON students.student_id = absences.student_id
    -> GROUP BY students.student_id;
+------------+---------------+----------+
| student_id | Name          | absences |
+------------+---------------+----------+
|          1 | Mike Johns    |        0 |
|          2 | Bilha Chumbaa |        0 |
|          3 | Dominic Bett  |        0 |
|          4 | Bobby Browns  |        0 |
+------------+---------------+----------+
4 rows in set (0.02 sec)

mysql> SELECT students.first_name,
    -> students.last_name,
    -> scores.test_id,
    -> scores.score
    -> FROM students INNER JOIN scores
    -> ON students.student_id = scores.student_id
    -> WHERE scores.score<=30
    -> ORDER BY scores.test.id;
ERROR 1054 (42S22): Unknown column 'scores.test.id' in 'order clause'
mysql> SELECT students.first_name, students.last_name, scores.test_id, scores.score FROM students INNER JOIN scores ON students.student_id = scores.student_id WHERE scores.score<=30 ORDER BY scores.test_id;
Empty set (0.01 sec)

mysql> SELECT students.first_name, students.last_name, scores.test_id, scores.score FROM students INNER JOIN scores ON students.student_id = scores.student_id WHERE scores.score<=15 ORDER BY scores.test_id;
Empty set (0.01 sec)

mysql> SELECT students.first_name, students.last_name, scores.test_id, scores.score FROM students INNER JOIN scores ON students.student_id = scores.student_id WHERE scores.score>0 ORDER BY scores.test_id;
Empty set (0.00 sec)

mysql> SELECT students.first_name,                                                         -> students.last_name,
    -> scores.test_id,
    -> scores.score
    -> FROM students INNER JOIN scores
    -> ON students.student_id = scores.student_id
    -> WHERE scores.score<=15;
Empty set (0.00 sec)

mysql> 
