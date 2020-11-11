create table issue
(
	id int auto_increment,
	description varchar(255) not null,
	address varchar(255) not null,
	category_id int null,
	constraint issue_pk
		primary key (id),
	constraint issue_category_id_fk
		foreign key (category_id) references category (id)
			on update cascade
);
