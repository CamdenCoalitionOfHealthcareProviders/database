-- create utilization tracker table

CREATE TABLE utilization (
	hie_id varchar,
	subscriber_id varchar REFERENCES cap_list (subscriber_id),
	admission_id varchar,
	admit_date date,
	discharge_date date,
	inp6mo numeric,
	ed6mo numeric,
	PRIMARY KEY (admission_id)
);