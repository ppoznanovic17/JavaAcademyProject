ALTER TABLE STUDENT_SUBJECT
  ADD max_professor_points int NOT NULL
    AFTER professor_points,
  ADD max_assistant_points int NOT NULL
    AFTER assistant_points;