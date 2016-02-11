-- creates capitation list table

CREATE TABLE cap_list (
	hie_id varchar,
	subscriber_id varchar,
	practice char,
	last_cap_date date,
	payer char,
	source char,	
	PRIMARY KEY (subscriber_id)
);