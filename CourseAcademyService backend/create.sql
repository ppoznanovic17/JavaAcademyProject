
    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistand_id integer not null,
        subject_id integer not null,
        primary key (assistand_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FK9nnaqdekwmcqa1ddd4mpx6yvu 
       foreign key (assistand_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistand_id integer not null,
        subject_id integer not null,
        primary key (assistand_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FK9nnaqdekwmcqa1ddd4mpx6yvu 
       foreign key (assistand_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistand_id integer not null,
        subject_id integer not null,
        primary key (assistand_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FK9nnaqdekwmcqa1ddd4mpx6yvu 
       foreign key (assistand_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistand_id integer not null,
        subject_id integer not null,
        primary key (assistand_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FK9nnaqdekwmcqa1ddd4mpx6yvu 
       foreign key (assistand_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistand_id integer not null,
        subject_id integer not null,
        primary key (assistand_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FK9nnaqdekwmcqa1ddd4mpx6yvu 
       foreign key (assistand_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistand_id integer not null,
        subject_id integer not null,
        primary key (assistand_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FK9nnaqdekwmcqa1ddd4mpx6yvu 
       foreign key (assistand_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistand_id integer not null,
        subject_id integer not null,
        primary key (assistand_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FK9nnaqdekwmcqa1ddd4mpx6yvu 
       foreign key (assistand_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistand_id integer not null,
        subject_id integer not null,
        primary key (assistand_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FK9nnaqdekwmcqa1ddd4mpx6yvu 
       foreign key (assistand_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistand_id integer not null,
        subject_id integer not null,
        primary key (assistand_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FK9nnaqdekwmcqa1ddd4mpx6yvu 
       foreign key (assistand_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistand_id integer not null,
        subject_id integer not null,
        primary key (assistand_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FK9nnaqdekwmcqa1ddd4mpx6yvu 
       foreign key (assistand_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistand_id integer not null,
        subject_id integer not null,
        primary key (assistand_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FK9nnaqdekwmcqa1ddd4mpx6yvu 
       foreign key (assistand_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistand_id integer not null,
        subject_id integer not null,
        primary key (assistand_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FK9nnaqdekwmcqa1ddd4mpx6yvu 
       foreign key (assistand_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistand_id integer not null,
        subject_id integer not null,
        primary key (assistand_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FK9nnaqdekwmcqa1ddd4mpx6yvu 
       foreign key (assistand_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistand_id integer not null,
        subject_id integer not null,
        primary key (assistand_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FK9nnaqdekwmcqa1ddd4mpx6yvu 
       foreign key (assistand_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistand_id integer not null,
        subject_id integer not null,
        primary key (assistand_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FK9nnaqdekwmcqa1ddd4mpx6yvu 
       foreign key (assistand_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistand_id integer not null,
        subject_id integer not null,
        primary key (assistand_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FK9nnaqdekwmcqa1ddd4mpx6yvu 
       foreign key (assistand_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistand_id integer not null,
        subject_id integer not null,
        primary key (assistand_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FK9nnaqdekwmcqa1ddd4mpx6yvu 
       foreign key (assistand_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistand_id integer not null,
        subject_id integer not null,
        primary key (assistand_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FK9nnaqdekwmcqa1ddd4mpx6yvu 
       foreign key (assistand_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistand_id integer not null,
        subject_id integer not null,
        primary key (assistand_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FK9nnaqdekwmcqa1ddd4mpx6yvu 
       foreign key (assistand_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistand_id integer not null,
        subject_id integer not null,
        primary key (assistand_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FK9nnaqdekwmcqa1ddd4mpx6yvu 
       foreign key (assistand_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistand_id integer not null,
        subject_id integer not null,
        primary key (assistand_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FK9nnaqdekwmcqa1ddd4mpx6yvu 
       foreign key (assistand_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistand_id integer not null,
        subject_id integer not null,
        primary key (assistand_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FK9nnaqdekwmcqa1ddd4mpx6yvu 
       foreign key (assistand_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)

    create table assistant (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table assistant_subject (
       assistant_id integer not null,
        subject_id integer not null,
        primary key (assistant_id, subject_id)
    ) engine=MyISAM

    create table hello (
       id integer not null auto_increment,
        a varchar(255),
        inaa integer not null,
        name varchar(40),
        str varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table professor (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table role (
       id integer not null auto_increment,
        role varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student (
       id integer not null auto_increment,
        last_name varchar(255),
        name varchar(255),
        primary key (id)
    ) engine=MyISAM

    create table student_subject (
       student_id integer not null,
        subject_id integer not null,
        assistant_points integer not null,
        mark integer not null,
        professor_points integer not null,
        student_subject_rating integer not null,
        student_subject_review varchar(255),
        primary key (student_id, subject_id)
    ) engine=MyISAM

    create table subject (
       id integer not null auto_increment,
        espb integer not null,
        max_assistant_points integer not null,
        max_professor_points integer not null,
        name varchar(255),
        semester integer not null,
        professor_id integer,
        primary key (id)
    ) engine=MyISAM

    create table user (
       id integer not null auto_increment,
        password varchar(255),
        username varchar(255),
        role_id integer,
        primary key (id)
    ) engine=MyISAM

    alter table assistant_subject 
       add constraint FKd5im8834q5c5rnxsxprwwpv0g 
       foreign key (assistant_id) 
       references assistant (id)

    alter table assistant_subject 
       add constraint FK3b5vstb2vk6vnbbggnvf7raaq 
       foreign key (subject_id) 
       references subject (id)

    alter table student_subject 
       add constraint FKnhw926s5os3ei5wqfaq94j0mh 
       foreign key (student_id) 
       references student (id)

    alter table student_subject 
       add constraint FK5cvx0kd792xhvd99s3bsbygfq 
       foreign key (subject_id) 
       references subject (id)

    alter table subject 
       add constraint FKmo243s3ik7ou3mndxwn1jee87 
       foreign key (professor_id) 
       references professor (id)

    alter table user 
       add constraint FKn82ha3ccdebhokx3a8fgdqeyy 
       foreign key (role_id) 
       references role (id)
