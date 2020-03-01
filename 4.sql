ALTER TABLE "projects"
    ADD cost int;

UPDATE projects
SET cost=50000
WHERE project_id = 710;
UPDATE projects
SET cost=20000
WHERE project_id = 720;
UPDATE projects
SET cost=10000
WHERE project_id = 730;
UPDATE projects
SET cost=23000
WHERE project_id = 740;
UPDATE projects
SET cost=19200
WHERE project_id = 750;