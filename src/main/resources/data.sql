INSERT INTO category (id, `name` ) values (1, '남자');
INSERT INTO category (id, `name` ) values (2, '여자');
INSERT INTO category (id, `name` ) values (3, '엑소');
INSERT INTO category (id, `name` ) values (4, '방탄소년단');
INSERT INTO category (id, `name` ) values (5, '블랙핑크');
INSERT INTO category (id, `name` ) values (6, '공지사항');
INSERT INTO category (id, `name` ) values (7, '첸');
INSERT INTO category (id, `name` ) values (8, '백현');
INSERT INTO category (id, `name` ) values (9, '시우민');
INSERT INTO category (id, `name` ) values (10, '공지사항');
INSERT INTO category (id, `name` ) values (11, '뷔');
INSERT INTO category (id, `name` ) values (12, '공지사항');
INSERT INTO category (id, `name` ) values (13, '로제');
INSERT INTO category (id, `name` ) values (14, '익명게시판');


INSERT INTO category_join(parent_idx, child_idx) values (1, 3);
INSERT INTO category_join(parent_idx, child_idx) values (1, 4);
INSERT INTO category_join(parent_idx, child_idx) values (2, 5);
INSERT INTO category_join(parent_idx, child_idx) values (3, 6);
INSERT INTO category_join(parent_idx, child_idx) values (3, 7);
INSERT INTO category_join(parent_idx, child_idx) values (3, 8);
INSERT INTO category_join(parent_idx, child_idx) values (3, 9);
INSERT INTO category_join(parent_idx, child_idx) values (4, 10);
INSERT INTO category_join(parent_idx, child_idx) values (4, 11);
INSERT INTO category_join(parent_idx, child_idx) values (4, 14);
INSERT INTO category_join(parent_idx, child_idx) values (5, 12);
INSERT INTO category_join(parent_idx, child_idx) values (5, 13);