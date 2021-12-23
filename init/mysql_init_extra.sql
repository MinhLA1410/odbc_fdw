
USE odbc_fdw_regress;

CREATE TABLE tbl01 (id bigint primary key, c1 INT);
CREATE TABLE tbl02 (id char(255) primary key, c1 INT, c2 float8, c3 boolean);
CREATE TABLE tbl02_tmp01 (id char(255) primary key, c1 INT, c2 float8 NOT NULL, c3 boolean);
CREATE TABLE tbl02_tmp02 (id char(255), c1 INT, c2 float8, c3 boolean, PRIMARY KEY(id, c1));
CREATE TABLE tbl03 (id timestamp primary key, c1 INT);
CREATE TABLE tbl04 (id INT primary key, c1 float8, c2 bigint, c3 text, c4 boolean, c5 timestamp);
INSERT INTO tbl04 VALUES (1, 31.12, 128912, 'anystring', true, '2000-01-01 00:00:00');
INSERT INTO tbl04 VALUES (2, 2565.56, 6565, 'example', false, '2000-01-01 00:00:00');
INSERT INTO tbl04 VALUES (3, -121.122, 1829812, 'thing', true, '2000-01-01 00:00:00');
INSERT INTO tbl04 VALUES (4, 55.23, 523, '!)@(#)!_#!', false, '1990-11-01 00:00:00');
INSERT INTO tbl04 VALUES (5, -1.12, 22342, '(!)JAWLFJ', false, '2010-11-01 00:00:00');
INSERT INTO tbl04 VALUES (6, 45021.21, 2121, 'example', false, '1999-10-01 00:00:00');
INSERT INTO tbl04 VALUES (7, 121.9741, 23241, 'thing', false, '2010-10-01 00:00:00');
INSERT INTO tbl04 VALUES (8, 75, 316, 'example', false, '1999-10-01 10:10:00');
INSERT INTO tbl04 VALUES (9, 6867.34, 8916, 'thing', false, '2010-10-01 10:10:00');
