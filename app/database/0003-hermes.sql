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
