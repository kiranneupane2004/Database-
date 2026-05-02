 CREATE TYPE student_obj AS OBJECT(
  2  subject_name VARCHAR2(20),
  3  marks        NUMBER
  4  );
  5  /

Type created.



 CREATE TYPE student_varray AS VARRAY(5) OF student_obj;
  2  /

Type created.



CREATE TABLE student_table(
  2  student_id NUMBER,
  3  student_name VARCHAR2(30),
  4  subjects student_varray
  5  );

Table created.


INSERT INTO student_table VALUES (
  2  1,
  3  'kiran',
  4  student_varray(
  5       student_obj('Math', 85),
  6       student_obj('Science', 90),
  7       student_obj('English', 78)
  8  )
  9  );

1 row created.


SELECT s.student_id, s.student_name, sub.subject_name, sub.marks
  2  FROM student_table s,
  3     TABLE(s.subjects) sub;

STUDENT_ID STUDENT_NAME                   SUBJECT_NAME             MARKS
---------- ------------------------------ -------------------- ----------
         1 kiran                          Math                        85
         1 kiran                          Science                     90
         1 kiran                          English                     78

