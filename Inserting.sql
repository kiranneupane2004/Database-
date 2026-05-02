CREATE TYPE address_type AS OBJECT (
  2      street VARCHAR2(50),
  3      city VARCHAR2(30),
  4      country VARCHAR2(30)
  5  );
  6  /

Type created.



CREATE TABLE sites (
  2      site_id NUMBER,
  3      address address_type
  4  );

Table created.


INSERT INTO sites (site_id, address)
  2  VALUES (1, address_type('22 Park Lane', 'London', 'UK'));

1 row created.
