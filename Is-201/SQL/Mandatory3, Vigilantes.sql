drop database slit;
create database slit;
use slit;

/* Creates a table for users. */
create table `user` (
	user_id varchar(5) primary key,
    user_name varchar(40),
    user_email varchar(30),
    user_number int(12)
);

insert into `user` (user_id, user_name, user_email, user_number)
values 	('us001', 'Morten', 'Morten@hotmail.com', 959595 ), ('us002', 'Benjamin', 'Benjamin@hotmail.com', 969696), 
		('us003', 'Kim', 'Kim@hotmail.com', 979797 ), ('us004', 'Vegard', 'Vegard@hotmail.com', 989898 ), 
		('us005', 'Brage', 'Brage@hotmail.com', 999999), ('us006', 'Jenny', 'Jenny@hotmail.com', 949494), 
		('us007', 'Tønnes', 'Tønnes@hotmail.com', 939393),('us008', 'Ingfrid', 'Ingfrid@hotmail.com', 929292), 
		('us009', 'Kevin', 'Kevin@hotmail.com', 919191), ('us010', 'Halgeir', 'Halgeir@hotmail.com', 909090 );

/* Creates a table for lecturers. The table helps identifying who's a lecturer. */
create table lecturer (
	lecturer_id varchar(5) primary key,
    user_id varchar(5) unique,
    foreign key (user_id) references `user` (user_id)
);

insert into lecturer (lecturer_id, user_id)
values ('le001', 'us001'), ('le002', 'us002');

/* Creates a table for modules. We store the information about the assignments here. */
create table module (
	module_id varchar(5) primary key,
    module_name varchar(20),
    module_goals text,
    module_details text,
    module_task text,
    module_deadline date
);

insert into module (module_id, module_name, module_goals, module_details, module_task, module_deadline)
values 	('mo001', 'Module 1', 'Learn function', 'This is module 1', 'Make a function', '2017-06-15'), 
		('mo002', 'Module 2','Learn method', 'This is module 2', 'Make a method', '2017-07-15'), 
		('mo003', 'Module 3','Learn array', 'This is module 3', 'Make a array', '2017-08-15'), 
		('mo004', 'Module 4','Learn testning', 'This is module 4', 'Do some testing and debuging', '2017-09-15'), 
		('mo005', 'Module 5','Learn hasmap', 'This is module 5', 'Make a hashmap', '2017-10-15');

/* Creates a table for students. It exists to identify the students. */
create table student (
	student_id varchar(5) primary key,
    user_id varchar(5) unique,
    foreign key (user_id) references `user` (user_id)
);

insert into student (student_id, user_id)
values ('st001', 'us003'), ('st002', 'us004'), ('st003', 'us005'), ('st004', 'us006'), 
	   ('st005', 'us007'), ('st006', 'us008'), ('st007', 'us009'), ('st008', 'us010');

/* Creates a table for assigments. This is where the students' assigments are stored. */
create table submit (
	submit_id varchar(5) primary key,
    submit_file varchar(10),
    submit_date date,
    module_id varchar(5),
    student_id varchar(5),
    foreign key (module_id) references module (module_id),
    foreign key (student_id) references student (student_id)
);

/* Submit_file is for the file name. We used the names for simplicity. */
insert into submit (submit_id, submit_file, submit_date, module_id, student_id)
values 	('su001', 'fi001', '2017-06-14', 'mo001', 'st001'), 
		('su002', 'fi002', '2017-07-14', 'mo001', 'st002'), 
		('su003', 'fi003', '2017-08-14', 'mo002', 'st003'),
		('su004', 'fi004', '2017-09-14', 'mo002', 'st004'), 
		('su005', 'fi005', '2017-10-14', 'mo003', 'st005'),
		('su006', 'fi006', '2017-11-14', 'mo003', 'st006'), 
		('su007', 'fi007', '2017-12-14', 'mo004', 'st007'),
		('su008', 'fi008', '2018-01-14', 'mo003', 'st007'),
		('su009', 'fi009', '2018-02-14', 'mo005', 'st008'),
		('su010', 'fi010', '2018-03-14', 'mo003', 'st008');

/* Creates a table that stores feedback on assignments done by students. */
create table feedback (
	feedback_id varchar(5) primary key,
    feedback_content text,
    feedback_date date,
    feedback_points int(2),
    submit_id varchar(5),
    foreign key (submit_id) references submit (submit_id)
);

insert into feedback (feedback_id, feedback_content, feedback_date, feedback_points, submit_id)
values 	('fe001','This was good','2017-06-16', 1,'su001'), ('fe002','This was bad','2017-07-16', 2,'su002'), 
		('fe003', 'Need more work', '2017-08-16', 3, 'su003'), ('fe004', 'Excellent', '2017-09-16', 4, 'su004'), 
		('fe005', 'Give up', '2017-10-16', 5, 'su005');

/* Creates a table for the blog. */
create table blog (
	blog_postID varchar(5) primary key,
    blog_title varchar(20),
    blog_content text,
    blog_datePosted date,
    student_id varchar(5),
    foreign key (student_id) references student (student_id)
);

insert into blog (blog_postID, blog_title, blog_content, blog_datePosted, student_id)
values 	('bl001', 'blog 1', 'Ones upon a time', '2017-06-17', 'st001'), 
		('bl002', 'blog 2', 'There was a boy/girl', '2017-07-17', 'st002'), 
		('bl003', 'blog 3', 'who was destined', '2017-08-17', 'st003'), 
        ('bl004', 'blog 4', 'to fail the course', '2017-09-17', 'st004'),
		('bl005', 'blog 5', 'then they had a little cry', '2017-10-17', 'st005'), 
		('bl006', 'blog 6', ' but then they relaized', '2017-11-17', 'st006'),
		('st007', 'blog 7', 'they had to get their shit together', '2017-12-17', 'st007'), 
		('st008', 'blog 8', 'and do it again and pass', '2018-01-17', 'st008');

/* Creates a table for standardized notifications. */
create table notification (
	notif_id varchar(20) primary key,
    notif_text text
);

insert into notification (notif_id,notif_text)
values ('no-submit','Hva nå enn vi skriver her kommer til å vise som en varsel i programmet'),
	   ('no-feedback','Denne varselen er for feedback'),
       ('no-module','Denne er for modul');

/* Creates a table that connects certain events to a notification. */
create table notifConnections (
	notifCon_id varchar(5) primary key,
    module_id varchar(5),
    submit_id varchar(5),
    feedback_id varchar(5),
    notif_id varchar(20),
    foreign key (module_id) references module(module_id),
    foreign key (submit_id) references submit(submit_id),
    foreign key (feedback_id) references feedback(feedback_id),
    foreign key (notif_id) references notification(notif_id)
);

insert into notifConnections (notifCon_id, module_id, submit_id, feedback_id, notif_id)
values ('nc001', null, 'su001', null, 'no-submit'),
	   ('nc002', 'mo001', null, null, 'no-module'),
	   ('nc003', null, null, 'fe001', 'no-feedback');
