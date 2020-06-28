CREATE TABLE course(
    course_id VARCHAR NOT NULL,
    course_year INTEGER NOT NULL,
    course_semester INTEGER NOT NULL,
    credit INTEGER,
    course_name VARCHAR,
    teacher_name VARCHAR,
    teacher_id VARCHAR, -- REFERENCES teacher (teacher_id)
    course_unit VARCHAR,
    course_time VARCHAR,
    classroom_id VARCHAR, -- classroom
    type_of_credit VARCHAR,
    change VARCHAR,
    course_comment VARCHAR,
    CONSTRAINT pk_course_id PRIMARY KEY (course_id,course_year,course_semester)
);

CREATE TABLE opinion (
    opinion_id VARCHAR PRIMARY KEY,
    course_id VARCHAR, -- REFERENCES course(course_id)
    course_year INTEGER,
    course_semester INTEGER,
    opinion_content VARCHAR,
    score INTEGER
);

CREATE TABLE student (
    student_id VARCHAR PRIMARY KEY,
    student_name VARCHAR,
    student_grade INTEGER,
    major VARCHAR,
    double_major VARCHAR,
    minor_one VARCHAR,
    minor_two VARCHAR,
    gender VARCHAR,
    credit INTEGER,
    student_password VARCHAR
);

CREATE TABLE teacher (
    teacher_id VARCHAR PRIMARY KEY,
    teacher_name VARCHAR,
    teacher_email VARCHAR,
    gender VARCHAR,
    teacher_office VARCHAR
);

CREATE TABLE classroom(
    classroom_id VARCHAR PRIMARY KEY,
    ac VARCHAR,
    project VARCHAR
);

--CREATE INDEX ix_course_name ON course (course_name);
--CREATE INDEX ix_course_time ON course (course_time);
--CREATE INDEX ix_course_teacher_id ON course (teacher_id);
--CREATE INDEX ix_student_name ON student (student_name);
--CREATE INDEX ix_syllabus_course_id ON syllabus (course_id);
--CREATE INDEX ix_syllabus_intro ON syllabus (introduction);
--CREATE INDEX ix_teacher_id ON teacher (teacher_id);
--CREATE INDEX ix_teacher_name ON teacher (teacher_name);