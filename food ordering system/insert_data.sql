
INSERT INTO students(name, national_id, student_id)
VALUES
('Paria', 25, 13420),
('Paniz', 410, 13417),
('Negin', 111, 12032);

INSERT INTO teachers(name, national_id, teacher_id, department, position)
VALUES
('Dr.Ahmadi', 31, 80, 'Computer Science', 'Professor'),
('Dr.Najafi', 91, 212, 'Mathematics', 'Professor'),
('Dr.Akbari', 49, 889, 'Computer Science', 'Professor');

INSERT INTO daily_menu(menu_id, menu_date)
VALUES
(10 , '2026-05-20'),
(2, '2026-05-30'),
(3, '2026-03-01');


INSERT INTO meals(meal_id, meal_name, price)
VALUES
(1, 'pizza', 20),
(2, 'sandwich', 15),
(3, 'pasta', 25);

INSERT INTO daily_menu_meals(menu_id, meal_id, meal_name, price)
VALUES
(10, 1, 'pizza', 20),
(2, 3, 'pasta', 23),
(3, 2, 'sandwich', 15);

INSERT INTO studentsorders (order_id, person_id, menu_id, meal_id,foodcount)
VALUES
(1, 12032, 10, 1, 4),
(2, 13417, 2, 1, 1),
(3, 13420, 3, 3, 5);

INSERT INTO teachersorders (order_id, person_id, menu_id, meal_id,foodcount)
VALUES
(4, 80, 10, 1, 1),
(5, 212, 2, 1, 4),
(6, 889, 3, 3, 2);
