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
