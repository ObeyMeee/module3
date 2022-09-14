INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('7594ede5-6a2e-4761-97c7-e614582522db',
        '2020-10-01', 19,
        'Andrey',
        'Doroshenko',
        (SELECT id FROM groups WHERE name = 'CS-320a'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('c381658b-55a0-48fa-8c97-3d538292c7ae',
        '2020-10-01', 19,
        'Stanislav',
        'Grigorchuk',
        (SELECT id FROM groups WHERE name = 'CS-320a'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('0d29bac8-6f28-481d-984c-05f3dccfcffd',
        '2020-10-01', 19,
        'Valentin',
        'Grishuk',
        (SELECT id FROM groups WHERE name = 'CS-320a'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('742d21a1-e4c2-4d18-8486-f3f55be2781b',
        '2020-10-01', 19,
        'Valentin',
        'Gubskiy',
        (SELECT id FROM groups WHERE name = 'CS-320a'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('1bcc1217-73b9-4a55-8676-429a00ebd20b',
        '2020-10-01', 19,
        'Vitaliy',
        'Onischenko',
        (SELECT id FROM groups WHERE name = 'CS-320a'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('c0244f00-2458-409c-8da0-03c5128f46d5',
        '2020-10-01', 19,
        'Andrey',
        'Moroz',
        (SELECT id FROM groups WHERE name = 'CS-320a'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('3120b52e-f7af-4d98-aa33-73dbbbc467d6',
        '2020-10-01', 19,
        'Valentin',
        'Semenovich',
        (SELECT id FROM groups WHERE name = 'CS-320a'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('2e185d63-3490-4554-8e09-d2aa207d36a1',
        '2020-10-01', 19,
        'Mykyta',
        'Romanenko',
        (SELECT id FROM groups WHERE name = 'CS-320a'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('2e185d63-3490-4544-8e01-d3aa207d36a1',
        '2019-09-01', 20,
        'Denis',
        'Savchuk',
        (SELECT id FROM groups WHERE name = 'CS-320a'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('5cc18943-62f5-4ccd-95db-d50cfda12118',
        '2019-09-01', 20,
        'Denis',
        'Serdyukov',
        (SELECT id FROM groups WHERE name = 'CS-320a'));

