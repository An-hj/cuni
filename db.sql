DROP DATABASE IF EXISTS cuni;
CREATE DATABASE cuni;
USE cuni;
SELECT * FROM `member`
CREATE TABLE `member` (
	id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	PRIMARY KEY(id),
	regDate DATETIME NOT NULL,
	loginId CHAR(50) NOT NULL,
	loginPw CHAR(50) NOT NULL,
	`name` CHAR(50) NOT NULL
);

ALTER TABLE `member` ADD UNIQUE INDEX (`loginId`);

INSERT INTO `member`
SET regDate = NOW(),
`name` = '홍길동',
loginId = 'user1',
loginPw = 'user1';

INSERT INTO `member`
SET regDate = NOW(),
`name` = '홍길순',
loginId = 'user2',
loginPw = 'user2';

CREATE TABLE board (
	id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	PRIMARY KEY(id),
	regDate DATETIME NOT NULL,
	`code` CHAR(50) NOT NULL,
	`name` CHAR(50) NOT NULL
);

INSERT INTO board
SET regDate = NOW(),
`code` = 'notice',
`name` = '공지사항';

INSERT INTO board
SET regDate = NOW(),
`code` = 'free',
`name` = '자유게시판';

CREATE TABLE article (
	id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	PRIMARY KEY(id),
	regDate DATETIME NOT NULL,
	boardId INT(10) UNSIGNED NOT NULL,
	title CHAR(100) NOT NULL,
	`body` TEXT NOT NULL
);

INSERT INTO article
SET regDate = NOW(),
boardId = 1,
title = '존나시끄러',
`body` = '공사 언제 끝나냐';

INSERT INTO article
SET regDate = NOW(),
boardId = 2,
title = '오늘 개졸리네',
`body` = '자고싶다';

INSERT INTO article
SET regDate = NOW(),
boardId = 1,
title = '아휴 하기싫어',
`body` = '언제 끝나지';