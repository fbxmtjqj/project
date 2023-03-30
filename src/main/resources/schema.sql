CREATE TABLE category_join (
    parent_idx INT,
    child_idx INT,
    primary key (parent_idx, child_idx)
);

CREATE TABLE category (
    id INT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL
);