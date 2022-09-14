INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('7accfaa5-a9b9-4304-8c91-fe03f04e8b3e',
        '2020-10-01', 19,
        'Mykyta',
        'Belogradskiy',
        (SELECT id FROM groups WHERE name = 'CIT-243'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('3d165c85-ba68-4945-b8de-a641af3de57f',
        '2020-10-01', 19,
        'Roman',
        'Bilozir',
        (SELECT id FROM groups WHERE name = 'CIT-243'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('2bc4bc83-3932-4af7-a55f-90bc053a3cf0',
        '2020-10-01', 19,
        'Roman',
        'Boguslavskiy',
        (SELECT id FROM groups WHERE name = 'CIT-243'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('bb9f8583-b33c-4862-bd8b-c2fc17667b72',
        '2020-10-01', 19,
        'Mykyta',
        'Boroday',
        (SELECT id FROM groups WHERE name = 'CIT-243'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('dad48288-9ae1-4105-995b-31ac627791fc',
        '2020-10-01', 19,
        'Yuri',
        'Batyuk',
        (SELECT id FROM groups WHERE name = 'CIT-243'));
