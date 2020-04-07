create table app_TASKS (
	task_id INT AUTO_INCREMENT,
	task_content VARCHAR(256),
	task_answer VARCHAR(256),
	user_id VARCHAR(256),
	task_keyword(256),
	PRIMARY KEY(task_id)
)

insert into app_TASKS values (1, 'test_content', null);
insert into app_TASKS values (2, 'test_content', null);
insert into app_TASKS values (3, 'test_content', null);

alter table app_TASKS add user_id VARCHAR(64)

update app_TASKS set user_id = '001'