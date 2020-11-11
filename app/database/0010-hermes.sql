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
