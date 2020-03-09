SELECT AVG(dev.salary),pr.project_name from developers dev
JOIN dev_projects dp on dev.dev_id = dp.dev_id
JOIN projects pr on dp.project_id = pr.project_id
WHERE pr.cost = (select MIN(ps.cost)
    from projects ps)
group by pr.project_name;
