ALTER TABLE USER
    DROP COLUMN role;

ALTER TABLE USER
  ADD role_id int NOT NULL
    AFTER password;

CREATE TABLE ROLE(
                          id int AUTO_INCREMENT NOT NULL,
                          role int,
                          PRIMARY KEY (`id`)

)DEFAULT CHARSET = utf8;

ALTER TABLE USER
    ADD CONSTRAINT FKRole
        FOREIGN KEY (role_id)
            REFERENCES ROLE (id);