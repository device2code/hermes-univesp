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

