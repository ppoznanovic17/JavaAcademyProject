DROP TABLE IF EXISTS ASSISTANT_SUBJECT;
DROP TABLE IF EXISTS student_subject;
DROP TABLE IF EXISTS SUBJECT;
DROP TABLE IF EXISTS STUDENT;
DROP TABLE IF EXISTS ASSISTANT;
DROP TABLE IF EXISTS USER;

DROP TABLE IF EXISTS PROFESSOR;


CREATE TABLE ASSISTANT_SUBJECT (
                                   assistant_id INT NOT NULL,
                                   subject_id INT NOT NULL,
                                   PRIMARY KEY (`assistant_id`, `subject_id`)
) DEFAULT CHARSET = utf8;


CREATE TABLE ASSISTANT(
                          id INT AUTO_INCREMENT NOT NULL ,
                          name VARCHAR(255),
                          last_name VARCHAR(255),
                          PRIMARY KEY (`id`)
)DEFAULT CHARSET = utf8;


CREATE TABLE PROFESSOR(
                          id INT AUTO_INCREMENT NOT NULL ,
                          name VARCHAR(255),
                          last_name VARCHAR(255),
                          PRIMARY KEY (`id`)
)DEFAULT CHARSET = utf8;


CREATE TABLE STUDENT(
                        id INT AUTO_INCREMENT NOT NULL,
                        name VARCHAR(255),
                        last_name VARCHAR(255),
                        PRIMARY KEY (`id`)
)DEFAULT CHARSET = utf8;

CREATE TABLE STUDENT_SUBJECT (
                                 student_id INT NOT NULL,
                                 subject_id INT NOT NULL,
                                 assistant_points INT NOT NULL,
                                 mark INT NOT NULL,
                                 professor_points INT NOT NULL,
                                 student_subject_rating INT NOT NULL,
                                 student_subject_review VARCHAR(255),
                                 PRIMARY KEY (`student_id`, `subject_id`)
) DEFAULT CHARSET = utf8;

CREATE TABLE SUBJECT (
                         id INT NOT NULL AUTO_INCREMENT,
                         espb INT NOT NULL,
                         name VARCHAR(255),
                         semester INT NOT NULL,
                         professor_id int,
                         PRIMARY KEY (`id`)
) DEFAULT CHARSET = utf8;

CREATE TABLE USER (
                      id INT NOT NULL AUTO_INCREMENT,
                      password VARCHAR(255),
                      role VARCHAR(255),
                      username VARCHAR(255),
                      PRIMARY KEY (`id`)
) DEFAULT CHARSET = utf8;


ALTER TABLE STUDENT_SUBJECT
    ADD CONSTRAINT FKStudent
        FOREIGN KEY (student_id)
            REFERENCES STUDENT (id);

ALTER TABLE STUDENT_SUBJECT
    ADD CONSTRAINT FKSubject
        FOREIGN KEY (subject_id)
            REFERENCES SUBJECT (id);

ALTER TABLE ASSISTANT_SUBJECT
    ADD CONSTRAINT FKAssistant
        FOREIGN KEY (assistant_id)
            REFERENCES ASSISTANT (id);

ALTER TABLE ASSISTANT_SUBJECT
    ADD CONSTRAINT FKSubject2
        FOREIGN KEY (subject_id)
            REFERENCES SUBJECT (id);

ALTER TABLE SUBJECT
    ADD CONSTRAINT FKProfessor
        FOREIGN KEY (professor_id)
            REFERENCES PROFESSOR (id);


