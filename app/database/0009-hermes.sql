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

