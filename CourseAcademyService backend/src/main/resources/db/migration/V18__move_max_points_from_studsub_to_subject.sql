ALTER TABLE STUDENT_SUBJECT
    DROP COLUMN max_assistant_points;

ALTER TABLE STUDENT_SUBJECT
    DROP COLUMN max_professor_points;

ALTER TABLE SUBJECT
  ADD max_assistant_points int NOT NULL
    AFTER semester;

ALTER TABLE SUBJECT
  ADD max_professor_points int NOT NULL
    AFTER semester;