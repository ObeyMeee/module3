INSERT INTO marks(id, value, lesson_id)
VALUES ('86ed6c4e-75df-47f8-b367-a75b73430308', 1, (SELECT id FROM lessons WHERE name = 'Physics'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('05637132-b274-48d9-943e-8fe96b449f10', 2, (SELECT id FROM lessons WHERE name = 'Physics'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('34f277ab-db43-493c-9d0b-7b335aa6c1b6', 3, (SELECT id FROM lessons WHERE name = 'Physics'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('ba315676-8a07-4aae-99bb-34cb34c2377b', 4, (SELECT id FROM lessons WHERE name = 'Physics'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('b155808f-fbf2-440c-8fa9-47c17d6a88ef', 5, (SELECT id FROM lessons WHERE name = 'Physics'));

INSERT INTO marks(id, value, lesson_id)
VALUES ('53a823ac-52e9-41f0-8abb-8d07bf703863', 1, (SELECT id FROM lessons WHERE name = 'Math'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('0c556226-4693-4c8c-bf49-5d582a0371fe', 2, (SELECT id FROM lessons WHERE name = 'Math'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('9c4961ac-6cc9-4264-ae0a-34860f289beb', 3, (SELECT id FROM lessons WHERE name = 'Math'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('8c5d2367-e959-4dff-8cb5-ce2f9ec8e264', 4, (SELECT id FROM lessons WHERE name = 'Math'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('580bcdf9-d4dd-460b-bcb4-b4a2017fd875', 5, (SELECT id FROM lessons WHERE name = 'Math'));

INSERT INTO marks(id, value, lesson_id)
VALUES ('c2a51e6d-e67d-4018-a6ba-a8c7ef468797', 1, (SELECT id FROM lessons WHERE name = 'Programming basics'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('1be950b2-84a7-4013-bc37-3d4027809ac4', 2, (SELECT id FROM lessons WHERE name = 'Programming basics'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('e391f544-a020-4328-87c0-669c2867b3d8', 3, (SELECT id FROM lessons WHERE name = 'Programming basics'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('819f22ff-39d4-4345-8059-ec8de7a76dbe', 4, (SELECT id FROM lessons WHERE name = 'Programming basics'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('8ce2f968-7997-4ab6-836c-8016da67f43b', 5, (SELECT id FROM lessons WHERE name = 'Programming basics'));

INSERT INTO marks(id, value, lesson_id)
VALUES ('c2a51a1d-e67d-4018-a6ba-a8c7ef468797', 1, (SELECT id FROM lessons WHERE name = 'Chemistry'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('1be951b3-84a7-4013-bc37-3d4027809ac4', 2, (SELECT id FROM lessons WHERE name = 'Chemistry'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('e391f646-a020-4328-87c0-669c2867b3d8', 3, (SELECT id FROM lessons WHERE name = 'Chemistry'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('819f22ee-39d4-4345-8059-ec8de7a76dbe', 4, (SELECT id FROM lessons WHERE name = 'Chemistry'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('8ce2f234-7997-4ab6-836c-8016da67f43b', 5, (SELECT id FROM lessons WHERE name = 'Chemistry'));

INSERT INTO marks(id, value, lesson_id)
VALUES ('c2a51a1d-e67d-4018-a6ba-a8c7ef468124', 1, (SELECT id FROM lessons WHERE name = 'Painting'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('1be951b3-84a7-4013-bc37-3d4027654ac4', 2, (SELECT id FROM lessons WHERE name = 'Painting'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('e391f646-a020-4328-87c0-669c2867b3c8', 3, (SELECT id FROM lessons WHERE name = 'Painting'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('819f22ee-39d4-4345-8059-ec8de7a76dba', 4, (SELECT id FROM lessons WHERE name = 'Painting'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('8ce2f234-7997-4ab6-836c-8016da67f21b', 5, (SELECT id FROM lessons WHERE name = 'Painting'));

INSERT INTO marks(id, value, lesson_id)
VALUES ('c2ec1d21-bfb1-45db-9ca4-90f408762496', 1, (SELECT id FROM lessons WHERE name = 'Biology'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('6d5478cf-0a11-4781-a867-d7712b2cbec5', 2, (SELECT id FROM lessons WHERE name = 'Biology'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('5e2fd372-2a0c-4c89-9d3e-acc62cecf71e', 3, (SELECT id FROM lessons WHERE name = 'Biology'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('8b9bb3f0-2fc9-4d9f-b718-696b17e65fba', 4, (SELECT id FROM lessons WHERE name = 'Biology'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('f3cde42e-d823-4065-805c-28bf088b9505', 5, (SELECT id FROM lessons WHERE name = 'Biology'));

INSERT INTO marks(id, value, lesson_id)
VALUES ('2eaa3278-5cae-4e7a-a44b-c3a6a9f12ab7', 1, (SELECT id FROM lessons WHERE name = 'English'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('2eacbc1c-0436-4978-bf02-88eeb7c4af07', 2, (SELECT id FROM lessons WHERE name = 'English'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('327e5bcb-3a19-4409-b83f-0affd63c2ca8', 3, (SELECT id FROM lessons WHERE name = 'English'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('5e11c6ff-3eb3-42fc-a40b-fa31fcd22058', 4, (SELECT id FROM lessons WHERE name = 'English'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('3391ecc3-4af5-426f-be5e-52c1cee2acc9', 5, (SELECT id FROM lessons WHERE name = 'English'));

INSERT INTO marks(id, value, lesson_id)
VALUES ('9a58f328-fadb-437d-9fa2-7d13971bc594', 1, (SELECT id FROM lessons WHERE name = 'Architecture of computer'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('05b21c63-4821-4c55-872c-655e455e6057', 2, (SELECT id FROM lessons WHERE name = 'Architecture of computer'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('95a25f5f-a347-442e-a385-8cc395958535', 3, (SELECT id FROM lessons WHERE name = 'Architecture of computer'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('51204590-4637-41fb-9083-92022d88f1ed', 4, (SELECT id FROM lessons WHERE name = 'Architecture of computer'));
INSERT INTO marks(id, value, lesson_id)
VALUES ('08f9ec81-b8c8-41b4-9ae0-21d57a4dbe6d', 5, (SELECT id FROM lessons WHERE name = 'Architecture of computer'));

