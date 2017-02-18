#
@../create/tables.sql;
#
ALTER TABLE users ADD COLUMN active INT(1)  DEFAULT 1  NOT NULL CHECK(active LIKE 0 OR 1);  