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
