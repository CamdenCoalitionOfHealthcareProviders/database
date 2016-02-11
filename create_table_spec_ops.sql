-- create special ops table

CREATE TABLE spec_ops (
	hie_id varchar,
	subscriber_id varchar REFERENCES cap_list (subscriber_id),
	operations char,
	spec_ops_id varchar,
	PRIMARY KEY (spec_ops_id)
);