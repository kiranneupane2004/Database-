
SQL> CREATE TABLE students (
  2      student_id NUMBER,
  3      addr_ref REF address_type SCOPE IS addresses
  4  );

Table created.



 INSERT INTO students (student_id, addr_ref)
  2  SELECT 101, REF(a)
  3  FROM addresses a
  4  WHERE a.street = '11 Highway';

1 row created.