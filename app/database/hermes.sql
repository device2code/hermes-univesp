create table status
(
	id int auto_increment,
	name varchar(255) not null,
	constraint status_pk
		primary key (id)
);

create table category
(
	id int auto_increment,
	name varchar(255) not null,
	constraint category_pk
		primary key (id)
);

create table company
(
	id int auto_increment,
	phone varchar(30) null,
	document_number varchar(50) null,
	system_user_id int null,
	constraint company_pk
		primary key (id),
	constraint company_system_user_id_fk
		foreign key (system_user_id) references system_user (id)
			on update cascade
);

create table citizen
(
	id int auto_increment,
	phone varchar(30) null,
	document_number varchar(50) null,
	system_user_id int null,
	constraint citizen_pk
		primary key (id),
	constraint citizen_system_user_id_fk
		foreign key (system_user_id) references system_user (id)
			on update cascade
);

create table company_category
(
	id int auto_increment,
	company_id int not null,
	category_id int not null,
	constraint company_category_pk
		primary key (id),
	constraint company_category_category_id_fk
		foreign key (category_id) references category (id)
			on update cascade,
	constraint company_category_company_id_fk
		foreign key (company_id) references company (id)
			on update cascade
);

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

create table image
(
	id int auto_increment,
	path varchar(255) not null,
	constraint image_pk
		primary key (id)
);

create table issue_image
(
	id int auto_increment,
	issue_id int not null,
	image_id int not null,
	constraint issue_image_pk
		primary key (id),
	constraint issue_image_image_id_fk
		foreign key (image_id) references image (id),
	constraint issue_image_issue_id_fk
		foreign key (issue_id) references issue (id)
			on update cascade
);

create table protocol
(
	id int auto_increment,
	number varchar(255) not null,
	citizen_id int not null,
	issue_id int not null,
	status_id int not null,
	constraint protocol_pk
		primary key (id),
	constraint protocol_citizen_id_fk
		foreign key (citizen_id) references citizen (id)
			on update cascade,
	constraint protocol_issue_id_fk
		foreign key (issue_id) references issue (id)
			on update cascade,
	constraint protocol_status_id_fk
		foreign key (status_id) references status (id)
			on update cascade
);

create unique index protocol_number_uindex
	on protocol (number);

create table service_order
(
	id int auto_increment,
	description varchar(255) null,
	start_date datetime null,
	end_date datetime null,
	protocol_id int not null,
	constraint service_order_pk
		primary key (id),
	constraint service_order_protocol_id_fk
		foreign key (protocol_id) references protocol (id)
			on update cascade
);

create table service_order_image
(
	id int auto_increment,
	service_order_id int not null,
	image_id int not null,
	constraint service_order_image_pk
		primary key (id),
	constraint service_order_image_image_id_fk
		foreign key (image_id) references image (id),
	constraint service_order_image_service_order_id_fk
		foreign key (service_order_id) references service_order (id)
			on update cascade
);

