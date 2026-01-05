-- create
CREATE TABLE USERS (
  username TEXT NOT NULL,
  password TEXT NOT NULL
);

-- insert
INSERT INTO USERS VALUES ('user1', '904kgp$-305nnn%-129qyq@');
INSERT INTO USERS VALUES ('user2', 'badapple');
INSERT INTO USERS VALUES ('user3', 'password123!!');

-- fetch 
SELECT * FROM USERS WHERE password = '904kgp$-305nnn%-129qyq@' AND username = 'user1';
