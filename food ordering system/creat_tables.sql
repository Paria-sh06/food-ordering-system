create table students(
    name nvarchar(255),
    national_id int,
    student_id int primary key not null
);

create table teachers(
    name nvarchar(255),
    national_id int,
    teacher_id int primary key not null,
    department nvarchar(255),
    position nvarchar(255)
);

create table daily_menu(
    menu_id int primary key not null,
    menu_date date
);

create table meals(
    meal_id int primary key ,
    meal_name nvarchar(255),
    price int
);

create table daily_menu_meals (
    menu_id int,
    foreign key (menu_id) references daily_menu(menu_id),
    meal_id int,
    foreign key (meal_id) references meals(meal_id),
    primary key (menu_id, meal_id)
);

create table studentsorders(
    order_id int primary key not null,
    person_id int not null,
    foreign key (person_id) references students(student_id),
    menu_id int,
    foreign key (menu_id) references daily_menu(menu_id),
    meal_id int,
    foreign key (menu_id, meal_id) references daily_menu_meals(menu_id, meal_id)
);

create table teachersorders(
    order_id int primary key not null,
    person_id int not null,
    foreign key (person_id) references teachers(teacher_id),
    menu_id int,
    foreign key (menu_id) references daily_menu(menu_id),
    meal_id int,
    foreign key (menu_id, meal_id) references daily_menu_meals(menu_id, meal_id)
);

alter table daily_menu_meals
add meal_name nvarchar(255);
alter table daily_menu_meals
add price int;
alter table studentsorders
add foodcount int;
alter table teachersorders
add foodcount int;