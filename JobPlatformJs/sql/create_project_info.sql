create table app_Project_Info(
	PJ_ID INT AUTO_INCREMENT,
	PJ_NAME VARCHAR(64) NOT NULL,
	PJ_INFO VARCHAR(256),
	TARGET_USER VARCHAR(256),
	PJ_KEYWORD varchar(256),
	START_DATE DATE,
	END_DATE DATE,
	PRIMARY KEY(PJ_ID)
)

INSERT INTO app_Project_Info values (1, 'test001title', 'test001info', 2019-08-16, null)

INSERT INTO app_Project_Info values (2, 'test002title', 'test002info', 2019-08-16, null)

INSERT INTO app_Project_Info values (3, 'test003title', 'test003info', 2019-08-16, null)