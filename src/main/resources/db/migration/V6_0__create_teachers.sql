INSERT INTO teachers(id, age, first_name, last_name, lesson_id)
VALUES ('75958469-422f-48fc-abe8-f72a97023909', 40, 'Vasiliy', 'Petrov',
        (SELECT id FROM lessons WHERE name = 'Physics'));

INSERT INTO teachers(id, age, first_name, last_name, lesson_id)
VALUES ('9230a0be-5f74-4396-8130-5c1bb2413edc', 29, 'Oleg', 'Dubenko', (SELECT id FROM lessons WHERE name = 'Math'));

INSERT INTO teachers(id, age, first_name, last_name, lesson_id)
VALUES ('df4818db-333b-4cb7-b54d-f95f52bfd4d1', 45, 'Vasiliy', 'Doroshenko',
        (SELECT id FROM lessons WHERE name = 'Programming basics'));

INSERT INTO teachers(id, age, first_name, last_name, lesson_id)
VALUES ('529b2182-41a1-4f79-8ae4-2496d795cf4e', 64, 'Mykola', 'Zakrevskiy',
        (SELECT id FROM lessons WHERE name = 'Chemistry'));

INSERT INTO teachers(id, age, first_name, last_name, lesson_id)
VALUES ('38aa6a31-845b-43fe-94dc-37156bb95c82', 25, 'Pavlo', 'Zinchenko',
        (SELECT id FROM lessons WHERE name = 'Painting'));

INSERT INTO teachers(id, age, first_name, last_name, lesson_id)
VALUES ('bb039823-0da7-4683-bb77-222fec5b44e3', 35, 'Yuri', 'Ivanchenko',
        (SELECT id FROM lessons WHERE name = 'Biology'));

INSERT INTO teachers(id, age, first_name, last_name, lesson_id)
VALUES ('a36431c2-5ec3-4b38-bc6b-e536c239b6fb', 46, 'Roman', 'Zozulya',
        (SELECT id FROM lessons WHERE name = 'Architecture of computer'));

INSERT INTO teachers(id, age, first_name, last_name, lesson_id)
VALUES ('f68a9d61-4faf-4517-a4d9-a9a3ecfab8b3', 57, 'Yakiv', 'Kavun', (SELECT id FROM lessons WHERE name = 'English'));

