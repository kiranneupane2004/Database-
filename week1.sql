CREATE TYPE person_type AS OBJECT (
    person_id NUMBER,
    name VARCHAR2(50),
    age NUMBER
);
/



CREATE TABLE person_obj_table OF person_type (
    PRIMARY KEY (person_id)
);



CREATE TABLE contact_info (
    phone_number NUMBER(10),
    person_ref REF person_type SCOPE IS person_obj_table
);