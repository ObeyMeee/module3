INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('3012865d-aab8-4a82-abf5-e4d390ed1c77',
        '2022-09-01', 18,
        'Anatoly',
        'Shelest',
        (SELECT id FROM groups WHERE name = 'II-219'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('7184468f-bd76-48ca-b63f-c6d766a66957',
        '2022-09-01', 17,
        'Volodymir',
        'Shklyar',
        (SELECT id FROM groups WHERE name = 'II-219'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('be8442ee-ab6c-43dd-9b94-01f7ab3a8cda',
        '2022-09-01', 18,
        'Grygory',
        'Cybulenko',
        (SELECT id FROM groups WHERE name = 'II-219'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('e03f8718-f01b-4bb0-a242-0296c4c4ff1d',
        '2022-09-01', 17,
        'Evgen',
        'Yaroshenko',
        (SELECT id FROM groups WHERE name = 'II-219'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('b4508aeb-3425-43aa-be96-1868f012e9f5',
        '2022-09-01', 18,
        'Evgen',
        'Yakushenko',
        (SELECT id FROM groups WHERE name = 'II-219'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('19746bac-a4c2-4618-bd1d-34407a57c364',
        '2022-09-01', 19,
        'Igor',
        'Beleckiy',
        (SELECT id FROM groups WHERE name = 'II-219'));

INSERT INTO students(id, admission_date, age, first_name, last_name, group_id)
VALUES ('67b701c9-e29a-48e6-b325-dfb593e024ae',
        '2022-09-01', 17,
        'Lev',
        'Artemenko',
        (SELECT id FROM groups WHERE name = 'II-219'));
