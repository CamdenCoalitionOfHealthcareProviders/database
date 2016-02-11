-- create perinatal risk assessment table

CREATE TABLE pra (
	subscriber_id varchar REFERENCES cap_list (subscriber_id),
	pra_id varchar,
	lmpdt date,
	edcdt date,
	preg_status char,
	hie_id varchar,
	PRIMARY KEY (pra_id)
);