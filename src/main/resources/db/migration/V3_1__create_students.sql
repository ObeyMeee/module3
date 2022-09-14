INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('131309bf-80c1-45fe-9252-7fa4c08be20c',
        '2017-09-01', 22,
        'Denis',
        'Samiylenko',
        (SELECT id FROM groups WHERE name = 'CSS-431b'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('a857edb7-8452-4ba8-94ef-ab285ae9d951',
        '2017-09-01', 22,
        'Danylo',
        'Reznik',
        (SELECT id FROM groups WHERE name = 'CSS-431b'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('21d73962-4b1b-4c72-afa8-317a8ce508fc',
        '2017-09-01', 22,
        'Valentin',
        'Stepchenko',
        (SELECT id FROM groups WHERE name = 'CSS-431b'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('afa857d1-42c1-4148-b46c-df259386f2c3',
        '2017-09-01', 22,
        'Valentin',
        'Sobchenko',
        (SELECT id FROM groups WHERE name = 'CSS-431b'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('d6106e08-6c52-4cb8-b494-24776d5b1872',
        '2017-09-01', 22,
        'Vitaliy',
        'Udovichenko',
        (SELECT id FROM groups WHERE name = 'CSS-431b'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('e573c8f6-22aa-4f12-884d-d77b025e2f1f',
        '2017-09-01', 21,
        'Andrey',
        'Filipenko',
        (SELECT id FROM groups WHERE name = 'CSS-431b'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('5ddccbda-4dfa-4b63-b0fc-8391fa679950',
        ' 2017-09-01', 22,
        'Valentin',
        'Hruschov',
        (SELECT id FROM groups WHERE name = 'CSS-431b'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('1913e419-396c-4be6-aac0-8f13a77ae6c1',
        '2017-09-01', 22,
        'Mykyta',
        'Chvertko',
        (SELECT id FROM groups WHERE name = 'CSS-431b'));
