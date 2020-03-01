-- incert developers

INSERT INTO public.developers(dev_id, dev_name, dev_age, dev_gender) VALUES (1,'Roman',20,'Male');
INSERT INTO public.developers(dev_id, dev_name, dev_age, dev_gender) VALUES (2,'Ksenia',24,'Female');
INSERT INTO public.developers(dev_id, dev_name, dev_age, dev_gender) VALUES (3,'Anton',25,'Male');
INSERT INTO public.developers(dev_id, dev_name, dev_age, dev_gender) VALUES (4,'Maksim',19,'Male');
INSERT INTO public.developers(dev_id, dev_name, dev_age, dev_gender) VALUES (5,'Lena',21,'Female');

-- insert skills

INSERT INTO public.skills(skills_id, skills_name, skills_lvl) VALUES (2451,'Java','Junior');
INSERT INTO public.skills(skills_id, skills_name, skills_lvl) VALUES (2452,'Java','Middle');
INSERT INTO public.skills(skills_id, skills_name, skills_lvl) VALUES (2453,'Java','Senior');
INSERT INTO public.skills(skills_id, skills_name, skills_lvl) VALUES (2454,'C++','Junior');
INSERT INTO public.skills(skills_id, skills_name, skills_lvl) VALUES (2455,'C++','Middle');
INSERT INTO public.skills(skills_id, skills_name, skills_lvl) VALUES (2456,'C++','Senior');
INSERT INTO public.skills(skills_id, skills_name, skills_lvl) VALUES (2457,'C#','Junior');
INSERT INTO public.skills(skills_id, skills_name, skills_lvl) VALUES (2458,'C#','Middle');
INSERT INTO public.skills(skills_id, skills_name, skills_lvl) VALUES (2459,'C#','Senior');
INSERT INTO public.skills(skills_id, skills_name, skills_lvl) VALUES (2460,'JS','Junior');
INSERT INTO public.skills(skills_id, skills_name, skills_lvl) VALUES (2461,'JS','Middle');
INSERT INTO public.skills(skills_id, skills_name, skills_lvl) VALUES (2462,'JS','Senior');

-- insert projects
INSERT INTO public.projects(project_id, project_name, project_description)
VALUES (710,'BlockChain_Exchange','Commercial platform for the exchange of electronic money');
INSERT INTO public.projects(project_id, project_name, project_description)
VALUES (720,'Internet_Shop','Platform for sellers');
INSERT INTO public.projects(project_id, project_name, project_description)
VALUES (730,'Education_portal','Student portal for class schedule');
INSERT INTO public.projects(project_id, project_name, project_description)
VALUES (740,'Hospital_in_phone','One-button emergency call');
INSERT INTO public.projects(project_id, project_name, project_description)
VALUES (750,'GPS_Navigator','Best Navigator');

-- insert companies
INSERT INTO public.companies(company_id, company_name, company_location) VALUES (255,'NAUTILUS','Germany');
INSERT INTO public.companies(company_id, company_name, company_location) VALUES (254,'Kozax','Ukraine');
INSERT INTO public.companies(company_id, company_name, company_location) VALUES (253,'GBK','USA');

--insert customer
INSERT INTO public.customers(customer_id, customer_name, customer_second_name) VALUES (1,'Grigoriy','Peshin');
INSERT INTO public.customers(customer_id, customer_name, customer_second_name) VALUES (2,'Goga','Fobar');
INSERT INTO public.customers(customer_id, customer_name, customer_second_name) VALUES (3,'Robin','Bishop');

-- insert dev_skills
INSERT INTO public.dev_skills(dev_skills_id, dev_id, skills_id) VALUES (1,1,2452);
INSERT INTO public.dev_skills(dev_skills_id, dev_id, skills_id) VALUES (2,1,2460);
INSERT INTO public.dev_skills(dev_skills_id, dev_id, skills_id) VALUES (3,2,2462);
INSERT INTO public.dev_skills(dev_skills_id, dev_id, skills_id) VALUES (4,2,2459);
INSERT INTO public.dev_skills(dev_skills_id, dev_id, skills_id) VALUES (5,2,2456);
INSERT INTO public.dev_skills(dev_skills_id, dev_id, skills_id) VALUES (6,2,2453);
INSERT INTO public.dev_skills(dev_skills_id, dev_id, skills_id) VALUES (7,3,2454);
INSERT INTO public.dev_skills(dev_skills_id, dev_id, skills_id) VALUES (8,4,2460);
INSERT INTO public.dev_skills(dev_skills_id, dev_id, skills_id) VALUES (9,5,2457);

-- insert dev_project
INSERT INTO public.dev_projects(dev_projects_id, dev_id, project_id) VALUES (1,1,710);
INSERT INTO public.dev_projects(dev_projects_id, dev_id, project_id) VALUES (2,1,750);
INSERT INTO public.dev_projects(dev_projects_id, dev_id, project_id) VALUES (3,2,720);
INSERT INTO public.dev_projects(dev_projects_id, dev_id, project_id) VALUES (4,3,730);
INSERT INTO public.dev_projects(dev_projects_id, dev_id, project_id) VALUES (5,4,740);
INSERT INTO public.dev_projects(dev_projects_id, dev_id, project_id) VALUES (1,5,750);

--insert companies_project
INSERT INTO public.companies_project(companies_project_id, companies_id, project_id) VALUES (1,255,730);
INSERT INTO public.companies_project(companies_project_id, companies_id, project_id) VALUES (2,254,720);
INSERT INTO public.companies_project(companies_project_id, companies_id, project_id) VALUES (3,253,750);
INSERT INTO public.companies_project(companies_project_id, companies_id, project_id) VALUES (4,254,710);

--insert customer_projects
INSERT INTO public.customer_projects(customer_projects_id, customer_id, project_id) VALUES (1,1,720);
INSERT INTO public.customer_projects(customer_projects_id, customer_id, project_id) VALUES (2,1,730);
INSERT INTO public.customer_projects(customer_projects_id, customer_id, project_id) VALUES (3,3,740);
INSERT INTO public.customer_projects(customer_projects_id, customer_id, project_id) VALUES (4,2,750);
INSERT INTO public.customer_projects(customer_projects_id, customer_id, project_id) VALUES (5,3,710);
