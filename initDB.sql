create table developers
(
    dev_id int primary key,
    dev_name VARCHAR(35),
    dev_age int,
    dev_gender varchar(7)
);
alter table developers owner to postgres;

create table skills
(
    skills_id int primary key,
    skills_name VARCHAR(35),
    skills_lvl VARCHAR(7)
);
alter table skills owner to postgres;

create table projects
(
    project_id int primary key,
    project_name VARCHAR(35),
    project_description VARCHAR
);
alter table projects owner to postgres;

create table companies
(
    company_id int primary key,
    company_name VARCHAR(25),
    company_location VARCHAR(15)
);
alter table companies owner to postgres;

create table customers
(
    customer_id int primary key,
    customer_name VARCHAR(15),
    customer_second_name VARCHAR(15)
);
alter table customers owner to postgres;

create table dev_skills
(
    dev_skills_id int,
    dev_id int,
    foreign key (dev_id) references developers(dev_id),
    skills_id int,
    foreign key (skills_id) references skills(skills_id)

);
alter table dev_skills owner to postgres;


create table dev_projects
(
    dev_projects_id int,
    dev_id int,
    foreign key (dev_id) references developers(dev_id),
    project_id int,
    foreign key (project_id) references projects(project_id)
);
alter table dev_projects owner to postgres;

create table companies_project
(
    companies_project_id int,
    companies_id int,
    foreign key (companies_id) references companies(company_id),
    project_id int,
    foreign key (project_id) references projects(project_id)
);
alter table companies_project owner to postgres;

create table customer_projects
(
    customer_projects_id int,
    customer_id int,
    foreign key (customer_id) references customers(customer_id),
    project_id int,
    foreign key (project_id) references projects(project_id)
);
alter table customer_projects owner to postgres;