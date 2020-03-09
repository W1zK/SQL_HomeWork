create table developers
(
    dev_id serial primary key,
    dev_name VARCHAR(35),
    dev_age int,
    dev_gender varchar(7)
);
alter table developers owner to postgres;

create table skills
(
    skills_id serial primary key,
    skills_name VARCHAR(35),
    skills_lvl VARCHAR(7)
);
alter table skills owner to postgres;

create table projects
(
    project_id serial primary key,
    project_name VARCHAR(35),
    project_description VARCHAR
);
alter table projects owner to postgres;

create table companies
(
    company_id serial primary key,
    company_name VARCHAR(25),
    company_location VARCHAR(15)
);
alter table companies owner to postgres;

create table customers
(
    customer_id serial primary key,
    customer_name VARCHAR(15),
    customer_second_name VARCHAR(15)
);
alter table customers owner to postgres;

create table dev_skills
(
    dev_id int,
    skills_id int,
    PRIMARY KEY (dev_id, skills_id),
    FOREIGN KEY (dev_id) REFERENCES developers (dev_id),
    FOREIGN KEY (skills_id) REFERENCES skills (skills_id)

);
alter table dev_skills owner to postgres;


create table dev_projects
(
    dev_id int,
    project_id int,
    PRIMARY KEY (dev_id,project_id),
    FOREIGN KEY (dev_id) REFERENCES developers(dev_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
    );
alter table dev_projects owner to postgres;

create table companies_project
(
    companies_id int,
    project_id int,
    PRIMARY KEY (companies_id,project_id),
    foreign key (companies_id) references companies(company_id),
    foreign key (project_id) references projects(project_id)
);
alter table companies_project owner to postgres;

create table customer_projects
(
    customer_id int,
    project_id int,
    PRIMARY KEY (customer_id,project_id),
    foreign key (customer_id) references customers(customer_id),
    foreign key (project_id) references projects(project_id)
);
alter table customer_projects owner to postgres;