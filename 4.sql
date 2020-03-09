ALTER TABLE "projects"
    ADD cost int;

UPDATE projects
SET cost=50000
WHERE project_id = 1;
UPDATE projects
SET cost=20000
WHERE project_id = 2;
UPDATE projects
SET cost=10000
WHERE project_id = 3;
UPDATE projects
SET cost=23000
WHERE project_id = 4;
UPDATE projects
SET cost=19200
WHERE project_id = 5;