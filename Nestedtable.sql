CREATE TYPE course_obj AS OBJECT (
  2      course_id NUMBER,
  3      course_name VARCHAR2(40),
  4      credits NUMBER
  5  );
  6  /

Type created.



 CREATE TYPE course_table_type AS TABLE OF course_obj;
  2  /

Type created.




SQL> CREATE TABLE student (
  2      student_id NUMBER,
  3      student_name VARCHAR2(50),
  4      courses course_table_type
  5  )
  6  NESTED TABLE courses STORE AS courses_table;

Table created.



 INSERT INTO student VALUES (
  2      101,
  3      'Ram',
  4      course_table_type(
  5          course_obj(1, 'Database', 3),
  6          course_obj(2, 'Java', 4),
  7          course_obj(3, 'Networking', 3)
  8      )
  9  );

1 row created.



 SELECT s.student_id, s.student_name, c.course_id, c.course_name, c.credits
  2  FROM student s,
  3       TABLE(s.courses) c;

STUDENT_ID STUDENT_NAME                                        COURSE_ID
---------- -------------------------------------------------- ----------
COURSE_NAME                                 CREDITS
---------------------------------------- ----------
       101 Ram                                                        1
Database                                          3

       101 Ram                                                        2
Java                                              4

       101 Ram                                                        3
Networking                                        3




